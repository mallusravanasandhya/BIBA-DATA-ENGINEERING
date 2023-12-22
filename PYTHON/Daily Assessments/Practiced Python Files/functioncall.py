#nested functions
def f1():
    s = 'I love HexaforHexa'
    def f2():
        print(s)
    f2()
f1()
#anonymous function
def cube(x): return x*x*x
cube_v2 = lambda x : x*x*x
print(cube(7))
print(cube_v2(7))
#return stmt
def square_value(num):
    """This function returns the square value of the entered number"""
    return num**2
print(square_value(2))
print(square_value(-4))
print(square_value.__doc__)

def myFun(x):
    x = 20
# Driver Code (Note that lst is modified
# after function call.
lst = [10, 11, 12, 13, 14, 15]
myFun(lst)
print(lst)


def myFun(x):
    x[0] = 20
# Driver Code (Note that lst is modified
# after function call.
lst = [10, 11, 12, 13, 14, 15]
myFun(lst)
print(lst)
#changes in values inside the function does not reflect on outside until and unless function returns the value
def swap(x, y):
    temp = x
    x = y
    y = temp
# Driver code
x = 2
y = 3
swap(x, y)
print(x)
print(y)
#map function
def addition(n):
    return n + n
# We double all numbers using map()
numbers = (1, 2, 3, 4)
result = map(addition, numbers)
print(list(result))
#map with lambda 
numbers = (1, 2, 3, 4)
result = map(lambda x: x*x, numbers)
print(list(result))
#maps using multple iterator
numbers1 = [1, 2, 3,0,'hi']
numbers2 = [4, 5, 6,5,'ram']
result = map(lambda x, y: x + y, numbers1, numbers2)
print(list(result))
#modify list using map
l = ['sat', 'bat', 'cat', 'mat']
# map() can listify the list of strings individually
test = list(map(set, l))
print(test)
l = ['sat', 'bat', 'cat', 'mat']
# map() can listify the list of strings individually
test = list(map(list, l))
print(test)

