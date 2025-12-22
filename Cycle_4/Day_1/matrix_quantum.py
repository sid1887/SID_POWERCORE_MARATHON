#No quantum actually needed now

import numpy as np
state1 = np.array([[1],[0]]) # column vector
gate1 = np.array([[0,1], [1,0]]) # 2x2 matrix
new_state1 = gate1 @ state1
print(new_state1)

state2 = np.array([[0], [1]])
gate2 = np.array([[1,0],[0,-1]])  # @ = multiplication
new_state2 = gate2 @ state2
print(state2)
