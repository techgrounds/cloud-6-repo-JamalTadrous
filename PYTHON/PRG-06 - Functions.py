# Exercise 1 :

import random
for i in range(5):
    print(random.randint(0, 100));

# why 'i' in range?: the 'i' in range stands for 'iteration'
# which means: a process of repeating.

print("------------------")

# Exercise 2 :

# 1
def myfunction():
    print("Hello world!")
myfunction();

print("------------------")

# 2
def myfunction():
    name = "Casper"
    print("Hello, " + name + "!")
myfunction();

print("------------------")

# Exercise 3 :

def avg(x,y):
    return (x + y) / 2

x = 128
y = 255
z = avg(x,y)
print ("The average of",x,"and", y, "is", z)


# source: https://www.w3schools.com/python/python_functions.asp