from qiskit import QuantumCircuit
from qiskit_aer import AerSimulator

qc1 = QuantumCircuit(1, 1)

qc1.measure(0, 0)

sim = AerSimulator()
result1 = sim.run(qc1, shots=1000).result()
counts1 = result1.get_counts()

print(counts1)



qc2 = QuantumCircuit(1, 1)

qc2.h(0)
qc2.measure(0, 0)

result2 = sim.run(qc2, shots=1000).result()
counts2 = result2.get_counts()

print(counts2)



qc3 = QuantumCircuit(1,1)
qc3.x(0)
sim3 = AerSimulator()
qc3.measure(0,0)
result3 = sim3.run(qc3, shots=1000).result()
counts3 = result3.get_counts()
print(counts3)


from math import pi
qc4 = QuantumCircuit(1,1)
qc4.ry(pi/2, 0)
sim4 = AerSimulator()
qc4.measure(0,0)
results4 = sim4.run(qc4, shots = 2000).result()
counts4 = results4.get_counts()
print(counts4)
