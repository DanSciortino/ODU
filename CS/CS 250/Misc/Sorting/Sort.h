void bubbleSort(int arr[], int n)
{
    bool swapped = true;
    int j = 0;
    int tmp;
    while (swapped)
        {
            swapped = false;
            j++;
            for (int i = 0; i < n - j; i++)
                {
                    if (arr[i] > arr[i + 1])
                        {
                            tmp = arr[i];
                            arr[i] = arr[i + 1];
                            arr[i + 1] = tmp;
                            swapped = true;
                        }
                }
        }
}

void selectionSort(int arr[], int n)
{
    int i, j, minIndex, tmp;
    for (i = 0; i < n - 1; i++)
        {
            minIndex = i;
            for (j = i + 1; j < n; j++){
                if (arr[j] < arr[minIndex])
                    minIndex = j;

            if (minIndex != i)
                {
                    tmp = arr[i];
                    arr[i] = arr[minIndex];
                    arr[minIndex] = tmp;
                }
            }
        }
}

void insertionSort(int arr[], int n)
{
    int i, j, tmp;
    for (i = 1; i < n; i++)
        {
            j = i;
            while (j > 0 && arr[j - 1] > arr[j])
                {
                    tmp = arr[j];
                    arr[j] = arr[j - 1];
                    arr[j - 1] = tmp;
                    j--;
                }
        }
}
