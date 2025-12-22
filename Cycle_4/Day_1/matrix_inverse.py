import numpy as np
A = np.array([[1, 2], [3, 4]])
B = np.array([[5], [6]])
X = np.linalg.inv(A) @ B
print(X)

C = np.array([[2,1],[1,3]])
D = np.array([[7],[5]])
Y = np.linalg.inv(C) @ D
print(Y)
