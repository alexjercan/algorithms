from typing import List
import numpy as np
import matplotlib.pyplot as plt
from sklearn.datasets import make_blobs


class KMeansClustering:
    def __init__(self, X: np.ndarray, num_clusters: int):
        self.X = X
        self.K = num_clusters
        self.max_iterations = 100
        self.plot_figure = True
        self.num_examples = X.shape[0]
        self.num_features = X.shape[1]

    def initialize_random_centroids(self) -> np.ndarray:
        centroids = [self.X[np.random.choice(
            range(self.num_examples))] for _ in range(self.K)]
        return np.array(centroids)

    def create_clusters(self, centroids: np.ndarray) -> List[List[int]]:
        clusters = [[] for _ in range(self.K)]

        for point_idx, point in enumerate(self.X):
            closest_centroid = np.argmin(
                np.sqrt(np.sum((point - centroids) ** 2, axis=1))
            )
            clusters[closest_centroid].append(point_idx)

        return clusters

    def calculate_new_centroids(self, clusters: np.ndarray) -> np.ndarray:
        centroids = [np.mean(self.X[clusters[k]], axis=0)
                     for k in range(self.K)]
        return np.array(centroids)

    def predict_cluster(self, clusters: List[List[int]]) -> np.ndarray:
        y_pred: np.ndarray = np.zeros(self.num_examples)

        for cluster_idx, cluster in enumerate(clusters):
            for sample_idx in cluster:
                y_pred[sample_idx] = cluster_idx

        return y_pred

    def plot_fig(self, y: np.ndarray):
        if self.num_features == 2:
            plt.scatter(X[:, 0], X[:, 1], c=y, s=40, cmap=plt.cm.Spectral)
            plt.show()
        elif self.num_features == 3:
            fig = plt.figure()
            ax = plt.axes(projection='3d')
            ax.scatter3D(self.X[:, 0],  self.X[:, 1],
                         self.X[:, 2], c=y, s=40, cmap=plt.cm.Spectral)
            plt.show()
        elif self.num_features == 4:
            fig = plt.figure()
            ax = plt.axes(projection='4d')
            ax.scatter3D(self.X[:, 0],  self.X[:, 1],
                         self.X[:, 2], c=y, s=40, cmap=plt.cm.Spectral)
            plt.show()

    def fit(self) -> np.ndarray:
        centroids = self.initialize_random_centroids()

        for _ in range(self.max_iterations):
            clusters = self.create_clusters(centroids)

            previous_centroids = centroids
            centroids = self.calculate_new_centroids(clusters)

            diff = centroids - previous_centroids

            if not diff.any():
                print("Termination criterion satisfied")
                break

        y_pred = self.predict_cluster(clusters)

        if self.plot_figure:
            self.plot_fig(y_pred)

        return y_pred


if __name__ == "__main__":
    np.random.seed(10)
    num_clusters = 10
    X, _ = make_blobs(n_samples=1000, n_features=2, centers=num_clusters)

    Kmeans = KMeansClustering(X, num_clusters)
    y_pred = Kmeans.fit()
