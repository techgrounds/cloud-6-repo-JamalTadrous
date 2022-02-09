# Exercise 1: 

a = 'int'
b = 7 
c = False
d = "18.5"

print(type(a))
print(type(b))
print(type(c))
print(type(d))

# Because B is an integer, I have to change the function 
# into a float, so that B and D can be added to eachother.
# D is actually written as string, but since i can assign
# the function, it will be acknowledged as a floating point.

x = float(b) + float(d)
print(x)

# Exercise 2: 

user_input = input()
print(user_input)
print(type(user_input));

# output:
# Hoi ik ben Jamal
# <class 'str'>

# Nadat ik deze code had gerund, had ik andere input geprobeerd.
# o.a.: 1988 ( mijn geboortejaar) & een getal 25.5 (een floating point).
# Er kwam er steeds als uitkomst: <class 'str'>