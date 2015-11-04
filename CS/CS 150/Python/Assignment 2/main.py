#Programmer : Daniel Sciortino
#Date       : 3 Nov 2015
#Description: Lab Assignment 2: Volume and Surface Area -- Solution

#Import sys for the sys.exit() function
import sys

#Declare two variables intially PI is treated as a const
PI = 3.14
Error = False

#Header for the program
print "========================================="
print "             Python  "
print "Lab Assignment 2: Volume and Surface Area"
print "========================================="


# Read the Length, Width, Height, and Radius from stdin
Length = input('Enter The Length: ')
Width = input('Enter The Width: ')
Height = input('Enter the Height: ')

Radius = input('\nEnter the Radius: ')


#Error Checking for the values
if Length <= 0:
    print "You've entered an invalid length of ", Length
    Error = True

if Width <= 0:
    print "You've entered an invalid length of ", Width
    Error = True

if Height <= 0:
    print "You've entered an invalid length of ", Height
    Error =True

if Radius <= 0:
    print "You've entered an invalid length of ", Radius
    Error = True

if Error == True:
    sys.exit(1)

#inline variable declaration and assignment
RectangularPrismSurfaceArea = 2.0 * ( ( Length * Width ) + (Width * Height ) + ( Height * Length) )
RectangularPrismVolume = Length * Width * Height

SphereSurfaceArea = 4.0 * PI * Radius * Radius
SphereVolume = 4.0 / 3.0 * PI * Radius * Radius * Radius

print '========Summary========='
print 'A Rectangular Prism of', Length, 'x', Width, 'x', Height
print 'Surface Area = ', RectangularPrismSurfaceArea
print 'Volume = ', RectangularPrismVolume
print '\nA Sphere'
print 'With a Radius of = ', Radius
print 'Surface area = ', SphereSurfaceArea
print 'Volume = ', SphereVolume


#Flow Control for displaying which has the largest Volume and Surface Area
if SphereSurfaceArea > RectangularPrismSurfaceArea:
    print 'The object with the greatest Surface Area is the Sphere'
elif SphereSurfaceArea < RectangularPrismSurfaceArea:
    print 'The object with the greatest Surface Area is the Rectangle'
else:
    print 'The objects have the same Surface area'

if SphereVolume > RectangularPrismVolume:
    print 'The object with the greates Volume is the Sphere'
elif SphereVolume < RectangularPrismVolume:
    print 'The object with the greates Volume is the Rectangle'
else:
    print 'They Have the same volume'
