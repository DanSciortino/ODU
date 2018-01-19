%% Clear the screen before the start of the program
%% Define the global constants for the x and y distances
clc;
clear;

%% This is the face detecting object
faceDetector = vision.CascadeObjectDetector();
steering = 0;
driving  = 0;

%% Open the webcam stream
if ~exist('cam','var')
    cam = webcam(1);
end
%% Set up an internal Connection to the LabVIEW Layer
%{
The commands will be sent accross in the following format
fprintf(u,'x1'), Where u is the connection, and 'x1' is the char array
%}
u = udp('127.0.0.1',12345);
u.EnablePortSharing = 'on';

fopen(u);

% Inital State
disp('--------------------------------------------------');
disp("* Starting Intial Setup");
fprintf(u,'hz');
disp("* Lights On");

fprintf(u,'dc');
disp("* Drive Starting Value");
pause(2);

fprintf(u,'u8');
disp("* Upper Arm Raised");
pause(7);

disp("* Lower Arm Raised");
fprintf(u,'l5');
pause(7);

fprintf(u,'pf');
disp("* Pan Centered");
pause(2);

fprintf(u,'tb');
disp("* Tilt Level");
pause(2);

disp("* Wheels Centered");
fprintf(u,'sf');
pause(2);

disp("* Lights Off");
fprintf(u,'h0');
disp("* Intial State Set up Complete");
disp('--------------------------------------------------');
disp("** Starting Classifer and training images **")
%% Load Images & train Classifier

imds = imageDatastore('./data',...
    'IncludeSubfolders',true,'LabelSource','foldernames');

%Next four lines are to test the faceRecognizer given the current database.
%[trainingSet,testSet] = splitEachLabel(imds,0.8,'randomize');
%bag = bagOfFeatures(trainingSet);
%faceRecognizer = trainImageCategoryClassifier(trainingSet,bag);
%evaluate(faceRecognizer,testSet);

%Identify key features of each subset of images
bag = bagOfFeatures(imds);

%Train the classifier using the database.
faceRecognizer = trainImageCategoryClassifier(imds,bag);

%% Main loop
while(1)
    %% Detection: Capture a frame from the webcam and detect the face.
    frame = snapshot(cam);
    bbox = step(faceDetector, frame);
    while(isempty(bbox))
        frame = snapshot(cam);
        bbox = step(faceDetector, frame);
        fprintf('** Bounding box not found **\n');
        fprintf(u,'db');
    end
    % This crops the frame for just the face to be used for recognition.
    face = imcrop(frame,bbox(1,:));
    %figure; imshow(face); title('Detected face');
    
    %% Recognition:  Attempt recogniton. If not recognized, skip tracking.
    prediction = predict(faceRecognizer,face);
    
    %% Tracking: Setup for face tracking
    if(prediction == 4)
        track = false;
        fprintf('****Lost Video\n')
        fprintf(u,'db');
    else
        track = true;
        % Track the face and feed data to labview.
        % If the face is lost, loop to detection
        bboxPoints = bbox2points(bbox(1, :));
        
        points = detectMinEigenFeatures(rgb2gray(frame), 'ROI', bbox(1,:));
        
        % Display the detected points.
        %figure, imshow(frame), hold on, title('Detected features');
        %plot(points);
        
        pointTracker = vision.PointTracker('MaxBidirectionalError', 2);
        
        % Initialize the tracker with the initial point locations and the initial
        % video frame.
        points = points.Location;
        initialize(pointTracker, points, frame);
        
        % Initialize a Video Player to Display the Results
        % Create a video player object for displaying video frames.
        videoPlayer  = vision.VideoPlayer('Position',...
            [100 100 [size(frame, 2), size(frame, 1)]+30]);
        oldPoints = points;
    end
    while(track)
        % get the next frame
        frame = snapshot(cam);
        
        % Track the points. Note that some points may be lost.
        [points, isFound] = step(pointTracker, frame);
        visiblePoints = points(isFound, :);
        oldInliers = oldPoints(isFound, :);
        
        if size(visiblePoints, 1) >= 2 % need at least 2 points
            
            % Estimate the geometric transformation between the old points
            % and the new points and eliminate outliers
            [xform, oldInliers, visiblePoints] = estimateGeometricTransform(...
                oldInliers, visiblePoints, 'similarity', 'MaxDistance', 4);
            
            % Apply the transformation to the bounding box points
            bboxPoints = transformPointsForward(xform, bboxPoints);
            
            % Insert a bounding box around the object being tracked
            bboxPolygon = reshape(bboxPoints', 1, []);
            
            %%  Access the points of the bounding box
            %
            disp('--------------------------------------------------');
            fprintf('x1 = %f : y1 = %f\n', bboxPoints(1,1), bboxPoints(1,2));
            fprintf('x2 = %f : y2 = %f\n', bboxPoints(2,1), bboxPoints(2,2));
            fprintf('x3 = %f : y3 = %f\n', bboxPoints(3,1), bboxPoints(3,2));
            fprintf('x4 = %f : y4 = %f\n', bboxPoints(4,1), bboxPoints(4,2));
            disp('--------------------------------------------------');
            
            % Start of calculations
            % Make the diagnonal size of the bounding box
            a = bboxPoints(1,1) - bboxPoints(2,1);
            b = bboxPoints(2,2) - bboxPoints(4,2);
            diagnonalDistance = sqrt(a.^2+b.^2);
            fprintf('Digonal Size: %f\n',diagnonalDistance);
            
            % Calculate the centroid of the bounding box to
            % find the x position of the bounding box
            [ geom, iner, cpmo ]  = polygeom(bboxPoints(:,1),bboxPoints(:,2));
            x_center = geom(2);
            y_center = geom(3);
            fprintf("Center At: %f,%f\n", x_center, y_center);
            
            % Only sending the 50th driving command
            % and sending the 75th steering command
            % to not flood the MARCbot
            if gt(50,driving)
                if diagnonalDistance < 90
                    fprintf('* Moving Closer\n');
                    fprintf(u,'d5');
                elseif diagnonalDistance > 170
                    fprintf('* Moving Away\n');
                    fprintf(u,'d1');
                else
                    fprintf('* I am Good here\n');
                end
                driving = 0;
                fprintf(u,'db');
            end
            
            if gt(75,steering)
                if x_center < 210
                    fprintf('* Moving Left\n');
                    fprintf(u,'sc');
                    fprintf(u,'d5');
                elseif x_center > 420
                    fprintf('* Moving Right\n');
                    fprintf(u,'s3');
                    fprintf(u,'d5');
                else
                    fprintf("* Center\n");
                    fprintf(u,'sf');
                end
                
                steering = 0;
                fprintf(u,'db');
            end
            
            fprintf(u,'db');
            %% Making Bounding Box
            frame = insertShape(frame, 'Polygon', bboxPolygon, ...
                'LineWidth', 2);
            
            % Display tracked points
            frame = insertMarker(frame, visiblePoints, '+', ...
                'Color', 'white');
            
            % Reset the points
            oldPoints = visiblePoints;
            setPoints(pointTracker, oldPoints);
            % Display the annotated video frame using the video player object
            step(videoPlayer, frame);
        else
            track = false;
            % Clean up
            release(videoPlayer);
            release(pointTracker);
            
            % If the person isnt in the frame dont move
            fprintf('Lost Person****\n');
            fprintf(u,'db');
        end
        steering = steering + 1;
        driving = driving + 1;
    end
end