for i in range(10):
    if i==7:
        break
    print(i,end=' ')
print()
for i in range(10):
    if i==5:
        continue
    print(i,end=' ')
print()
for i in range(4):
    print(i)
    if i!=3:
        pass