# **Loops**  

Je kunt loops gebruiken wanneer je een codeblok meerdere keren wilt uitvoeren. Je wilt bijvoorbeeld een bewerking uitvoeren op elk item in een (grote) lijst, of je wilt een algoritme schrijven dat dezelfde set instructies voor meerdere iteraties volgt.  
Er zijn twee soorten lussen in Python: de while-loop en de for-loop.  
De while-loop wordt uitgevoerd terwijl een voorwaarde True is. Ze kunnen voor onbepaalde tijd worden uitgevoerd als die voorwaarde nooit verandert. Als je code vastzit in een oneindige loop, druk je gewoon op ctrl-c (of command-c op MacOS) om de actieve code geforceerd af te sluiten.  
De for-loop wordt uitgevoerd voor een vooraf bepaald aantal iteraties. Dit nummer kan hard worden gecodeerd met behulp van de functie range(), of dynamisch worden toegewezen (met behulp van een variabele, de grootte van een lijst of het aantal regels in een document). Het is ook mogelijk om per ongeluk een oneindige for-loop te maken. Je kunt hetzelfde commando (ctrl/cmd+c) gebruiken om jouw programma af te sluiten.  


## **Opdracht**  
***Exercise 1:***  
- Maak een nieuw script.  
- Maak een variabele x en geef deze de waarde 0.  
Gebruik een while-loop om de waarde van x in elke iteratie van de lus af te drukken. Na het afdrukken moet de waarde van x met 1 toenemen. De loop moet lopen zolang x kleiner is dan of gelijk is aan 10.  

#### **Resultaat**  
```Python
x = 0 
while x <= 10:
    print(x)
    x = x + 1;

output: 
0
1
2
3
4
5
6
7
8
9
10
```

***Exercise 2:***  
- Maak een nieuw script.  
- Kopieer onderstaande code in je script.  

```Python
for i in range(10):
    # do something here
```
- Druk de waarde van *i* af in de *for-loop*. Je hoeft niet handmatig een waarde toegekend aan *i*. Zoek uit hoe de waarde wordt bepaald.  
- Voeg een variabele *x* toe met waarde 5 bovenaan je script.  
- Gebruik de for-loop om de waarde van *'x'* vermenigvuldigd met de waarde van *'i'* af te drukken voor maximaal 50 iteraties.  

#### **Resultaat**  
```Python
x = 5
for i in range(50):
    print(i * x);

# output:
0
5
10
15
20
25
...(etc)
235
240
245
```

***Exercise 3:***
- Maak een nieuw script.
- Kopieer de onderstaande array in je script.
arr = ["Coen", "Casper", "Joshua", "Abdessamad", "Saskia"]
Gebruik een for-loop om over de array te loopen. Print elke naam afzonderlijk.

#### **Resultaat**  
```Python
arr = ["Coen", "Casper", "Joshua", "Abdessamad", "Saskia"]
for x in arr:
    print(x);

# output:
Coen
Casper
Joshua
Abdessamad
Saskia
```
