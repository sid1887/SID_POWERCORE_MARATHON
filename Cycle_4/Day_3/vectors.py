import numpy as np

v1 = np.array([1,0])
v2 = np.array([0,1])

v3 = np.array([[5,0,6], [2,7,0], [9,8,0]])
v4 = np.array([[9,14,3], [0,8,5], [20,10,0]])

v_sum1 = v1 + v2       # vector addition
v_sum2 = v3 + v4

v_scaled1 = 3 * v1     # scalar multiplication
v_scaled2 = 5 * v3


dot1 = np.dot(v1,v2)                 # inner product (dot product)
dot2 = np.dot(v3,v4)

norm1 = np.linalg.norm(v1)           # norm (length)
norm2 = np.linalg.norm(v2)
norm3 = np.linalg.norm(v3)
norm4 = np.linalg.norm(v4)


A = np.array([[2, 0],                # define an operator (matrix)
              [0, 1]])

v = np.array([1,1])
v_new = A @ v


print(v_sum1)
print(v_sum2)
print(v_scaled1)
print(v_scaled2)

print(dot1, dot2)
print(norm1, norm2, norm3, norm4)
print(v_new)
