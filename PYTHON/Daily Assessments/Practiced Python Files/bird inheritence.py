class Bird:
    def __init__(self,name):
        self.name=name
    def print_info(self):
        print('This bird is: ',self.name)
    def fly(self):
        print('The bird can fly')
class Parrot(Bird):
    def __init__(self,name,color,charater):
        super().__init__(name)
        self.color=color
        self.charter=charater
    def print_info(self):
        Bird.print_info(self)
        print('Color of bird is : ',self.color)
        print('Charter of bird is : ',self.charter)
p=Parrot('parrot','red','good')

p.fly()
p.print_info()     
        