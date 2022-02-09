# **Key-Value pairs**  
***Introductie***  
Een *"Key-Value pair"* bestaat uit twee gerelateerde gegevenselementen: een *Key* (sleutel), een *'constante'* die de gegevensset definieert (bijv. geslacht, kleur, prijs), en een *Value* (waarde), een *'variabele'* die bij de verzameling hoort (bijv. man/vrouw, groen, 100).

## **Opdracht**  
***Exercise 1:***  
- Maak een nieuw script.  
- Maak een woordenboek met de volgende sleutels en waarden:  
![tabel PRG08](https://user-images.githubusercontent.com/95616021/153305749-24609245-e03b-44ab-b03a-fc72c181df65.jpg)  , een
- Loop over de 'dictionary' en druk elk key/value-pair (sleutel/waarde-paar) in de terminal af.  


```Python
# Exercise 1 :

dictionary = {
    "First Name": "Coen",
    "Last Name": "Meulenkamp",
    "Job Title": "Learning Coach",
    "Company": "Techgrounds"
    }
print(dictionary)

# output dictionary:
# {'First Name': 'Coen', 'Last Name': 'Meulenkamp', 'Job Title': 'Learning Coach', 'Company': 'Techgrounds'}

```


***Exercise 2:***  
- Maak een nieuw script.  
- Gebruik *user input* om hun informatie op te vragen (voornaam, achternaam, functie, bedrijf). - Bewaar de informatie in een *dictionary*.  
- Schrijf de informatie naar een csv-bestand (door komma's gescheiden waarden). De gegevens mogen *niet worden overschreven* wanneer u het script meerdere keren uitvoert.  


```Python

# Exercise 2 :

import csv

dictionary = {
    "First Name": input("First name: "), 
    "Last Name": input("Last name: "),
    "Job Title": input("Job Title: "),
    "Company": input("Company: "),
}

with open('mycsvfile.csv', 'a') as f:
    w = csv.writer(f)
    w.writerow(dictionary.keys())
    w.writerow(dictionary.values())

print(dictionary)

# output exercise 2 :
# mycsvfile.csv
# &
# extra example file; mycsvfile2.csv is with: w.writerow(dictionary.items())

# source: https://stackoverflow.com/questions/10373247/how-do-i-write-a-python-dictionary-to-a-csv-file?noredirect=1&lq=1

```