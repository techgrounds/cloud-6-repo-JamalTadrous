# **Functions**  
*Introductie:*  
Je hebt al een aantal functies gezien en gebruikt, zoals print() en input(). Een functie is een codeblok dat alleen wordt uitgevoerd als het wordt aangeroepen. Functies zijn herkenbaar aan de haakjes () naast de functienaam. Deze haakjes dienen als een plaats om gegevens in een functie in te voeren.  
Functies kunnen als resultaat gegevens retourneren.  

Naast de ingebouwde functies kunt u ook aangepaste functies schrijven, of functies importeren uit een bibliotheek of pakket.  

## **Opdracht**
*Exercise 1:*  
- Maak een nieuw script.  
- Importeer het *random* pakket.  
- Print 5 willekeurige gehele getallen af ​​met een waarde tussen 0 en 100.  
  
#### **Resultaat**  
```Python
import random
for i in range(5):
    print(random.randint(0, 100));

# why 'i' in range?: the 'i' in range stands for 'iteration'
# which means: a process of repeating.

# output:
34
6
1
83
51

```

**Exercise 2:**
- Maak een nieuw script.  
- Schrijf een aangepaste functie myfunction() die "Hello, world!" afdrukt. naar de terminal.  
- Call myfunction.  
- Herschrijf je functie zodat er een string als argument voor nodig is. Dan zou het "Hello, <string>!" moeten afdrukken.  

#### **Resultaat**  
```Python
# Exercise 2 :

# 1
def myfunction():
    print("Hello world!")
myfunction();


# 2
def myfunction():
    name = "Casper"
    print("Hello, " + name + "!")
myfunction();
```

**Exercise 3:**  
- Maak een nieuw script.  
- Kopieer onderstaande code in je script.  
```Python
def avg():
    # write your code here
 
x = 128
y = 255
z = avg(x,y)
print ("The average of",x,"and", y, "is", z)
```
- Schrijf de aangepaste functie avg() zo dat deze het gemiddelde van de gegeven parameters retourneert.  
  
  
#### **Resultaat**  
```Python
# Exercise 3 :

def avg(x,y):
    return (x + y) / 2

x = 128
y = 255
z = avg(x,y)
print ("The average of",x,"and", y, "is", z)

# output:
The average of 128 and 255 is 191.5

# source: https://www.w3schools.com/python/python_functions.asp
```