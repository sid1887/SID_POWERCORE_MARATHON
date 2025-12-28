import ast
x = input("Enter the value here: ")
y = ast.literal_eval(x)
print(y)
if y != str and chr:
    y=float(y)
    print(y)
