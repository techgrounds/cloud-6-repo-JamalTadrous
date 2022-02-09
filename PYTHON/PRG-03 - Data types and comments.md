# **Data types and comments**  

Onder de motorkap kan een computer alleen reeksen nullen en enen zien. Programmeertalen maken gebruik van datatypes om de computer te vertellen hoe deze strings moeten worden geïnterpreteerd.  
Als de computer bijvoorbeeld de binaire tekenreeks 01000001 moet lezen, moet hij het gegevenstype weten om te bepalen of dit 65 of "A" betekent.  

## **Key-terms**  

Dit is een niet-uitputtende lijst van enkele belangrijke gegevenstypen in Python:  
- **Booleaans**  
    Een binaire toestand die waar of onwaar is.
    *boolean = True*  

- **string**  
    Technisch gezien een scala aan karakters. Tekenreeksen worden aangegeven met dubbele aanhalingstekens " " of " enkele aanhalingstekens".  
    *string = "Dit is een string"*  

- **int**  
    Een geheel getal is een geheel getal. Ints kunnen zowel positief als negatief zijn.  
    *integer (geheel getal) = 6*  

- **float**  
    Een 'getal met drijvende komma' (floating point number) is een decimaal getal.  
    *floating_point = 18.5*  

- **Comments (#)**
Comments (Opmerkingen) zijn regels die niet als code worden verwerkt. Dit kan voor meerdere doeleinden worden gebruikt. U kunt bijvoorbeeld een korte beschrijving schrijven van wat een codeblok doet. Je kunt sommige code ook ‘commenteren’, zodat deze tijdelijk wordt verwijderd. Dit kan handig zijn voor testen en debuggen.  



## **Opdracht**  
  
***Exercise 1:***  
- Maak een nieuw script.  
- Copy the code below into your script.  
a = 'int'  
b = 7  
c = False  
d = "18.5"  
- Bepaal de gegevenstypen van alle vier de variabelen *(a, b, c, d)* met behulp van een ingebouwde functie.  
- Maak een nieuwe variabele x en geef deze de waarde *b + d*. Druk de waarde van x af. Dit zal een fout opleveren. Repareer het zodat *print(x)* een float afdrukt.  
- Schrijf een comment boven elke regel code die de lezer vertelt wat er in je script gebeurt.  
  
#### **Resultaat**  
```Python
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
# D is actually written as a string, but since i can assign
# the function, it will be acknowledged as a floating point.

x = float(b) + float(d)
print(x)

# output: 
<class 'str'>
<class 'int'>
<class 'bool'>
<class 'str'>
25.5
```

***Exercise 2:***  
- Maak een nieuw script.  
- Gebruik de input() functie om input van de gebruiker te krijgen. Sla die invoer op in een variabele.  
- Zoek uit welk gegevenstype de uitvoer van input() is. Kijk of het verschillend is voor verschillende soorten invoer (cijfers, woorden, enz.).  
  
#### **Resultaat**  
```Python
# Exercise 2: 

user_input = input()
print(user_input)
print(type(user_input));

# output:
Hoi ik ben Jamal
<class 'str'>

# Nadat ik deze code had gerund, had ik andere input geprobeerd.
# o.a.: 1988 ( mijn geboortejaar) & een getal 25.5 (een floating point).
# Er kwam er steeds als uitkomst: 
<class 'str'>
```
