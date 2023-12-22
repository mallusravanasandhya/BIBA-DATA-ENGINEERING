with open("D:\python\python practiced hexaware\__pycache__\Salary_Data.csv") as file:
    content = file.readlines()
header = content[:1]
rows = content[1:]
print(header)
print(rows)

header = ['Name', 'M1 Score', 'M2 Score']
data = [['Alex', 62, 80], ['Brad', 45, 56], ['Joey', 85, 98]]
filename = 'Student_scores.csv'
with open(filename, 'w') as file:
    for header in header:
        file.write(str(header)+', ')
    file.write('n')
    for row in data:
        for x in row:
            file.write(str(x)+', ')
        file.write('n')
        
        
with open("D:\python\python practiced hexaware\Student_scores.csv") as file:
    con=file.readline()
    h=con[:1]
    d=con[1:]
print(h)
print(d)