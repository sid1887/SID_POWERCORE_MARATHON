import time

print("Initializing system.....")

time.sleep(2)

voltage = int(input("Connect the voltage source⚡: "))
temp = float(input("Your desired temperature here: "))
print("checking system stat.....⚙️")

time.sleep(2)

if voltage == 230 and temp == 37:
    print("System is at normal mode....")

elif voltage < 230 and temp > 37:
    print("System is at non-operable mode⚠️.....")

elif voltage > 230 or temp < 37:
    print("High voltage status....system turning off")
time.sleep(2)
print("System check complete......")
