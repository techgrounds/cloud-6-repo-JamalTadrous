'''
The output should be:
a5|||5|||5|||a5|||5|||5|||a5|||5|||5|||
'''
foo = ''
for i in range(12):
    if i == 0 or i == 4 or i == 8:
        foo += 'a'
    else:
        for j in range(1):
            foo += '5'
        for k in range(3):
            foo += '|'

print(foo)

# output:
# a5|||5|||5|||a5|||5|||5|||a5|||5|||5|||

# fix:
# range aangevuld met een if else statement, om ervoor 
# te zorgen dan de letter a, geplaatst word op andere 
# plekken in de reeks.
