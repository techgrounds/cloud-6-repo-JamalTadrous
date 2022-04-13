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

# Exercise 2 :

import csv

dictionary = {
    "First Name": input("First name: "), 
    "Last Name": input("Last name: "),
    "Job Title": input("Job Title: "),
    "Company": input("Company: "),
}

with open('mycsvfile3.csv', 'a') as f:
    write = csv.writer(f)
    write.writerow(dictionary.keys())
    write.writerow(dictionary.values())

print(dictionary)

# output exercise 2 :
# mycsvfile.csv
# &
# extra example file; mycsvfile2.csv is with: w.writerow(dictionary.items())

# source: https://stackoverflow.com/questions/10373247/how-do-i-write-a-python-dictionary-to-a-csv-file?noredirect=1&lq=1



