'''
The output should be:
['Dog', 'Cat', 'Fly']
'''
ln = ['Dog', 'Cat', 'Elephant', 'Fly', 'Horse']
short_names = []

for animal in ln:
	if len(animal) == 3:
		short_names.append(animal)

print(short_names)

#output=
# 	short_names = [] <<= Moest verwijderd worden, 
#  waardoor word het script uitvoerbaar werd en
# de 3 woorden met 3 letters in short_names werd toegevoegd.