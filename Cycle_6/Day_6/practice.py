#--------------------Task1--------------------

n = int(input("Enter the number: "))
if n % 3 == 0:
    if n % 3 == 0 and n % 5 == 0:
        print("FizzBuzz")
    else:
        print("Fizz")
elif n % 5 == 0:
    if n % 3 == 0 and n % 5 == 0:
        print("FizzBuzz")
    else:
        print("Buzz")
else:
    print(n)


#--------------------Task2--------------------

p = int(input("Enter the number: "))
for i in range(1, p+1):
    if i % 3 == 0 or i % 5 == 0:
        if i % 3 == 0 and i % 5 == 0:
            continue
        print("i = ", i)

#--------------------Task3--------------------

def is_prime():
    k = int(input("Enter the number: "))
    if k < 2:
        print("The number is not prime")
    else:
        is_prime_flag = True
        for i in range(2, k):
            if k % i == 0:
                is_prime_flag = False
                break

        if is_prime_flag:
            print("The number is prime")
        else:
            print("The number is not prime")

is_prime()



def counter():
    sentence = input("Enter the sentence here: ")
    sentence = sentence.lower()
    words = " "
    no_of_vowels = 0
    no_of_digits = 0
    spaces = 0
    print("Calculating.....")
    for i in range(10000):
        pass
    for word in sentence:
        if word == " ":
            spaces += 1
        words = word.join(l.replace(" ", "") for l in sentence)
        no_of_words = spaces + 1
        if word == 'a' or word == 'e' or word == 'i' or word == 'o' or word == 'u':
                no_of_vowels += 1
        if word.isdigit() == True:
            no_of_digits += 1
    print("The number of words are: ", no_of_words)
    print("The number of vowels are: ", no_of_vowels)
    print("The number of digits are: ", no_of_digits)
    print("The number of spaces are: ", spaces)

counter()
