# **Conditions**  
Introductie:  
Heel vaak wil je een stukje code alleen uitvoeren als aan bepaalde voorwaarden is voldaan. Je wilt bijvoorbeeld alleen iets naar een foutenlogboek schrijven als er een fout is opgetreden.
Python maakt gebruik van de if-, elif- en else-statements.  


## **Opdracht**
***Exercise 1:***
- Maak een nieuw script.  
- Gebruik de input() functie om de gebruiker van je script om hun naam te vragen. Als de naam die ze invoeren jouw naam is, druk je een persoonlijk welkomstbericht af. Als dat niet het geval is, druk je een ander persoonlijk bericht af.

```Python
name = input("Please input your name: ")

if name == "Jamal":
    print("Hello! Welcome, Jamal!")
else:
    print("You are " + name + ", " + "not Jamal. Please leave.")

```
***Exercise 2 :***

- Maak een nieuw schrift.
- Vraag de gebruiker van je script om een ​​nummer. Geef ze een antwoord op basis van of het getal hoger dan, lager dan of gelijk aan 100 is.
- Laat het spel herhalen totdat de gebruiker 100 invoert..  

```Python

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
```

