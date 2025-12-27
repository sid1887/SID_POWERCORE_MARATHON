import math

print("=========The AC Signal Analyser========")

try:
    Vm = float(input("Enter peak voltage (V): "))
    f = float(input("Enter frequency (Hz): "))
    phase_angle = float(input("Enter phase angle (degrees): "))
    t = float(input("Enter time (seconds): "))

    phi = math.radians(phase_angle)
    ang_freq = 2*math.pi*f
    v_t = Vm*math.sin(ang_freq*t + phi)

    power_factor = math.cos(phi)

    print("\n --- Results ---")
    print(f"Angular frequency = {ang_freq:.2f}")
    print(f"Instantaneous voltage = {v_t} V")
    print(f"Power factor = {power_factor}")

except ValueError:
    print("Error: Please enter the valid numeric values!!")
