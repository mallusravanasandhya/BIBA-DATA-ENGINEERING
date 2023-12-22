class Father():
    def f_quality(self):
        print('Inside Father class')
        print('Father has intelligence and deep thinking power')
    def f_nature(self):
        print('He is strict in priciple')
class Son1(Father):
    def son1_quality(self):
        print("Inside child1 class")
        print('Child wants to become a software engineer')
class Son2(Father):
    def son2_quality(self):
        print("Inside child2 class")
        print('Child2 has very good spirutuality')
s1=Son1()
s1.f_quality()
s1.f_nature()
s1.son1_quality()
s2=Son2()
s2.f_quality()
s2.f_nature()
s2.son2_quality()