# **Lists**
Je kunt een lijst met waarden in een enkele variabele declareren. Een lijst wordt weergegeven door vierkante haken [] en elke waarde wordt gescheiden door een komma.  

Aan elke positie in een lijst is een nummer gekoppeld dat de index wordt genoemd. Indexen beginnen bij 0, dus het eerste item in een lijst heeft de index 0. Het tweede item heeft index 1, enz. Je kunt afzonderlijke items in een lijst oproepen door de index ervan aan te roepen.  

Je kunt een lijst doorlopen met een for-loop. In plaats van een getal binnen een bereik, heeft i (of hoe je de variabele ook noemt die je declareert) de waarde van een item in de lijst. Je kunt range() nog steeds gebruiken om een ​​lijst te doorlopen. In dit geval zal ik worden gebruikt om een ​​index in een lijst aan te roepen.  


## **Opdracht**  
***Exercise 1:***
- Maak een nieuw script.  
- Maak een variabele die een lijst met vijf namen bevat.  
- Loop over de lijst met een for-loop. Print elke individuele naam in de lijst op een nieuwe regel.  

```Python
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
```

***Exercise 2:***
- Maak een nieuw script.
- Maak een lijst van vijf integers (gehele getallen).
- Gebruik een for-loop om het volgende te doen voor elk item in de lijst:
Druk de waarde van dat item af, opgeteld bij de waarde van het volgende item in de lijst. Als het het laatste item is, voeg het dan toe aan de waarde van het eerste item (aangezien er geen volgend item is).  

```Python
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

```