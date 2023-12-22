#simple function
def fun():
  print("Welcome to GFG")
#function call
fun()
#function with parameters
def add(n1:int,n2:int)->int:
    r=n1+n2
    return r
a,b=3,6
c=add(a,b)
print(f'the sum of {a} and {b} is {c}.' )

#default argument
def fun(a,b=4):
    print(a,b)
#def fun(a,b=4,c):---returns syntax error as non-default argument follows default argument
print('with single argument')
fun(2,2)
print('with two arguments')
fun(5,7)

#keyword arguments
print('keyword arguments')
def student(name,age):
    '''function to return student details'''
    print('Name: ',name)
    print('Age: ',age)
student(name='Ram',age=23)
student(age=26,name='Ashok')
#positional argument
print('positional argument')
student(12,'Sam')
student("Henna",19)

#arbitary keyword arguments
print('arbitary keyword arguments')
def fun(*args):
    for i in args:
        print(i)
fun(12,'hi','hello','welcome','to',2024,'year')
def myfun(**kwargs):
    for k,v in kwargs.items():
        print(k,v)
        print("%s == %s" %(k,v))
myfun(car='benz',colur='black',home='villa')
#document string
print(student.__doc__)
 

def fun():
    return
print(fun())


def swap(x, y):
    temp = x
    x = y
    y = temp
    print(x,y)
    
# Driver code
x = 2
y = 3
print(swap(x, y))
print(x)
print(y)



