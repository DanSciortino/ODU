template<typename T>
void BubbleSort(vector<T> &V) {
	int tmp = 0;									//O(1)
	for (int i = 0; i < V.size(); i++) {			//O(N)
		for (int j = 0; j < V.size(); j++) {		//O(N
			if (V[j] > V[j + 1]) {					//O(1)
				tmp = V[j];							//O(1)
				V[j] = V[j + 1];					//O(1)
				V[j + 1] = tmp;						//O(1)
			}
		}
	}
}

template<typename T>
void FillVector(vector<T> &V) {
	int j = 20;
	int k = 0;
	for (int i = 0; i < j; i++) {

		k = rand() % 100 + 1;
		V.push_back(k);
	}

}

template<typename T>
void PrintVector(vector<T> &V) {
	for (int i = 0; i < V.size(); i++) {
		cout << V[i] << ' ';
	}
}
