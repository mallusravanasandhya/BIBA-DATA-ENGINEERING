import numpy as np
a=np.array([[21,4,6],[5,7,98],[32,7,8],['a','b','c']])
print("Array dimensions:",np.ndim(a))
print('Array Shape:',np.shape(a))
print('Array size:',np.size(a))
print(a)
print('datatype of array elements:',np.dtype)

a = np.array([[1, 2, 4], [5, 8, 7]], dtype = 'bytes') 

print(a)
a=np.ones((6,2),dtype='float')
print(a)

#binaryoperations 
a=np.array(((1,4),(2,6)))
b=np.array(((7,3),(2,8)))
print('Addition of Matrix\n',a+b)
print('Subtraction of Matrix\n',a-b)
print('Matrix Multiplication\n',a.dot(b))
print('Transpose of A\n',a.T)
#reshape
a=np.array([[1,2,3],[4,5,6],[7,8,9],[2,4,6]])
t=a.reshape(2,3,2)
print(t)
#arithmetic operations
print('Adding 3 to every element in a',a+3)
print('Squaring all elements in array\n',a**2)
print('Cubing every element in a\n',a**3)
#Urnary operations
print(a)
print('Max element of a',a.max())
print('Min element in rowwise',a.min(axis=1))
print('Sum of array elements',a.sum())
print('Cummulative sum column wise',a.cumsum(axis=0))

#sorting
print('Sorted Array',np.sort(a,axis=None))
print('Sorted Array in rowwise',np.sort(a,axis=1))


