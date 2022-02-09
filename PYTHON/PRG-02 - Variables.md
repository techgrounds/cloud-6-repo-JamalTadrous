# **Variables**  
Een variabele kan een waarde opslaan. Deze waarde is dan toegankelijk met de variabelenaam in de code. Dit is handig als u één waarde meerdere keren wilt gebruiken of als u de waarde dynamisch wilt wijzigen.

Een variabelenaam kan elke tekenreeks zijn (behalve enkele speciale gevallen die zijn gereserveerd voor ander gebruik). Het is een goede gewoonte om variabelenamen te gebruiken die kort, maar ook duidelijk zijn. Een variabele die gebruikersinvoer opslaat, kan bijvoorbeeld input of usr_inpt heten.

Onthoud dat u op elk moment in de code een print-instructie kunt plaatsen om de huidige waarde van een variabele te lezen. Dit is handig wanneer u een bug in een script probeert te vinden.

## **Opdracht**  
***Oefening 1:***  
- Maak een nieuw script.  
- Maak twee variabelen x en y. Wijs aan beide variabelen een numerieke waarde toe.  
- Druk de waarden van x en y af.  
- Maak een derde variabele met de naam z. De waarde van z moet de som zijn van x en y.  
- Druk de waarde van z af.  

#### **Resultaat**  
```Python
x = 10
y = 20
Sum = (x + y)
z = Sum
print(z);

output: 30
```

***Exercise 2:***  
- Maak een nieuw script.  
- Maak een variabelenaam. De waarde van naam moet uw naam zijn.  
- Druk de tekst "Hello, <hier uw naam>!" af. Gebruik naam in de printopdracht.  

#### **Resultaat**  
```Python
name = "Jamal Tadrous"
print("Hello, " + name);

output: Hello, Jamal Tadrous
```

***Exercise 3:***  
- Maak een nieuw script.  
- Maak een variabele en wijs er een waarde aan toe.  
- Print de tekst “Waarde 1: <waarde 1 hier>”.  
- Verander de waarde van diezelfde variabele.  
- Print de tekst “Waarde 2: <waarde 2 hier>”.  
- Verander de waarde van diezelfde variabele.  
- Print de tekst “Waarde 3: <waarde 3 hier>”.  

#### **Resultaat**  
```Python
Value_1 = "Jamal"
print("Value 1: " + Value_1)
Value_1 = "Tadrous"

Value_2 = 33
print("Value 2: " + str(Value_2))
Value_2 = 88

Value_3 = "I think i get it"
print("Value 3: " + Value_3)
Value_3 = "Or maybe not?"

print(Value_1)
print(Value_2)
print(Value_3)

output:
Value 1: Jamal
Value 2: 33
Value 3: I think i get it
Tadrous
88
Or maybe not?
```
