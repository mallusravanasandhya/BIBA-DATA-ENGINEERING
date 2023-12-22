import csv
with open('D:\python\python practiced hexaware\__pycache__\Salary_Data.csv', 'r') as csvfile:
    reader = csv.DictReader(csvfile)
    for row in reader:
       print(row)
