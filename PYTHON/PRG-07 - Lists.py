# Exercise 1 :

name_list = ['Casper', 'Coen', 'Kim Sing', 'Achraf', 'Clyde']
for i in name_list:
    print(i)

# output exercise 1:
# Casper
# Coen
# Kim Sing
# Achraf
# Clyde

print("------------------")


# Exercise 2 :

pricelist = [20, 40, 60 , 80, 100]

for i in range(len(pricelist)):
    if i == len(pricelist)-1:
        print(pricelist[i] + pricelist[0])
    else:
        print(pricelist[i] + pricelist[i+1])

# output exercise 2:
# 60
# 100
# 140
# 180
# 120