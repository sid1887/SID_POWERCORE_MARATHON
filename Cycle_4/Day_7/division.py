a = float(input("Enter the value for a: "))
b = float(input("Enter the value for b: "))

try:
    x = a/b
    print(x)
except ZeroDivisionError:
    print("Enter an non-zero number!")
