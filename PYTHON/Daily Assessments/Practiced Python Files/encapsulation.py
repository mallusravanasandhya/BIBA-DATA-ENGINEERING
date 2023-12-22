class Base:
    def __init__(self):
        self.a = "HexaforHexa"
        self._b = "HexaforHexa"
        self.__c = "HexaforHexa"
# Creating a derived class
class Derived(Base):
    def __init__(self):
        # Calling constructor of
        # Base class
        Base.__init__(self)
        print("Calling private member of base class: ")
        print(self.__c)
# Driver code
obj1 = Base()
print(obj1.a)
print(obj1._b)
#print(obj1.__c)
# Uncommenting print(obj1.c) will
# raise an AttributeError