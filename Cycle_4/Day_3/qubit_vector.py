import numpy as np

# |0> and |1> basis states
ket0 = np.array([[1],
                 [0]])

ket1 = np.array([[0],
                 [1]])

# superposition state
psi = (ket0 + ket1) / np.sqrt(2)


# Pauli-X (quantum NOT gate)
X = np.array([[0, 1],
              [1, 0]])

# apply operator
psi_new = X @ psi           #∣ψ′⟩=X^∣ψ⟩

# eigenvalues and eigenvectors
eigvals, eigvecs = np.linalg.eig(X)


print("Quantum state |psi> =\n", psi)
print("After X gate =\n", psi_new)
print("Eigenvalues:\n", eigvals)
print("Eigenvectors:\n", eigvecs)

