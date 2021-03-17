import numpy as np

class KNearestNeighbor():
    def __init__(self, k):
        self.k = k
        self.eps = 1e-8
    
    def train(self, X, y):
        self.X_train = X
        self.y_train = y
    
    def predict(self, X_test, num_loops=2):
        if num_loops == 2:
            distances = self.compute_distance_two_loops(X_test)
        elif num_loops == 1:
            distances = self.compute_distance_one_loop(X_test)
        else:
            distances = self.compute_distance_vectorized(X_test)

        return self.predict_labels(distances)
    
    def compute_distance_vectorized(self, X_test):
        X_test_squared = np.sum(X_test**2, axis=1, keepdims=True)
        X_train_squared = np.sum(self.X_train**2, axis=1, keepdims=True)
        X_test_train = np.dot(X_test, self.X_train.T)
        return np.sqrt(self.eps + X_test_squared - 2 * X_test_train + X_train_squared.T)
    
    def compute_distance_one_loop(self, X_test):
        num_test = X_test.shape[0]
        num_train = self.X_train.shape[0]
        distances = np.zeros((num_test, num_train))
        
        for i in range(num_test):
            distances[i, :] = np.sqrt(self.eps + np.sum((self.X_train - X_test[i,:])**2, axis=1))
            
        return distances
    
    def compute_distance_two_loops(self, X_test):
        num_test = X_test.shape[0]
        num_train = self.X_train.shape[0]
        distances = np.zeros((num_test, num_train))
        
        for i in range(num_test):
            for j in range(num_train):
                distances[i][j] = np.sqrt(self.eps + np.sum((self.X_train[j,:] - X_test[i,:])**2))

        return distances
    
    def predict_labels(self, distances):
        num_test = distances.shape[0]
        y_pred = np.zeros(num_test)
        
        for i in range(num_test):
            y_indices = np.argsort(distances[i,:])
            k_closest_classes = self.y_train[y_indices[:self.k]].astype(int)
            y_pred[i] = np.argmax(np.bincount(k_closest_classes))
            
        return y_pred
    
if __name__ == '__main__':
    X = np.loadtxt('example_data/data.txt', delimiter=',')
    y = np.loadtxt('example_data/targets.txt')
    
    knn = KNearestNeighbor(k=3)
    knn.train(X, y)
    y_pred = knn.predict(X, num_loops=0)
    
    print(f'Accuracy: {sum(y_pred==y)/y.shape[0]}')