import pandas as pd

#to read data from the salary data.csv file

data=pd.read_csv('D:\python\python practiced hexaware\__pycache__\Salary_Data.csv',delimiter=',')
print(data)
print(data.columns)
print(data.Salary)

#to create and write the data into student data.csv file

head=['Name','id','dpt']
data=[['Ram',1,'CSE'],['Hari',2,'EEE'],['Sam',3,'ECE']]
data=pd.DataFrame(data,columns=head)
data.to_csv('Student data.csv',index=False)


#to read the student data.csv file
data=pd.read_csv('Student data.csv',delimiter=',')
print(data)
print(data.columns)
