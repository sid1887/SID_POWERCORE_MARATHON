from qiskit import QuantumCircuit, transpile
from qiskit_aer import AerSimulator

qc = QuantumCircuit(1,1)
qc.h(0)
qc.measure(0,0)
print(qc)

backend = AerSimulator()
transpiled_circuit = transpile(qc, backend)
job = backend.run(transpiled_circuit, shots=1024)
results = job.result()
counts = results.get_counts(qc)
print(counts)
