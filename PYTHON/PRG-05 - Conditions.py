# Exercise 1 :

name = input("Please input your name: ")

if name == "Jamal":
    print("Hello! Welcome, Jamal!")
else:
    print("You are " + name + ", " + "not Jamal. Please leave.")


# Exercise 2 :

try:
    number = int(input("Please input a number:"))
    if number == 100:
        print(number, "is a nice number indeed")
    elif number < 100:
        print(number, "is pretty low, isn't it")
    else:
        print("Wow,", number, "is a big number!")
except ValueError:
    print("Integer only!")

# informatie bron:
# https://www.w3schools.com/python/python_try_except.asp