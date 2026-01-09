import math

u = float(input("Enter initial velocity (m/s): "))
theta_deg = float(input("Enter angle (degrees): "))
g = 9.8

theta = math.radians(theta_deg)

T = (2 * u * math.sin(theta)) / g
H = (u**2 * (math.sin(theta))**2) / (2 * g)
R = (u**2 * math.sin(2 * theta)) / g

print(f"Time of Flight: {T:.2f} s")
print(f"Maximum Height: {H:.2f} m")
print(f"Range: {R:.2f} m")
