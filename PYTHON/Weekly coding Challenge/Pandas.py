#imported pandas module and renamed it as pn
import pandas as pn

head=['Name','College','Branch'] #headings or column name for csv file
data=[['Raju','AITSR','CSE'],['Hema','MITSM','CSS'],['Padma','VIT','EEE'],['Vidya','JNTUA','Mech']] 
#the data to be added to the file
d=pn.DataFrame(data,columns=head)
d.to_csv('SList.csv',index='False') #writing the data into the csv file named SList which is created now
#reading data from the above created file SList
dt=pn.read_csv('Slist.csv',delimiter=',')
print(dt)
print(dt.columns)
print(dt.Name)