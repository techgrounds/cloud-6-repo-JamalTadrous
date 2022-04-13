'''
The output should be:
True
'''
def rtn(x):
	return(x)

foo = rtn(3)

if foo < rtn(4):
	print(True)
else:
	print(False)

# output: 
# True -> verandering van de operater.
# De range is 4. foo=rtn is gedefineerd als 3, 
# dus dat is kleiner dan 4 en niet groter.
# Daarom: > operator(groter dan) veranderen in < (kleiner dan) 
# en het script print True.