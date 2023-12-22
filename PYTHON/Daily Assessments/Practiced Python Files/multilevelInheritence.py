class GrandFather:
    def gf_quality(self):
        print('Inside Grand father class')
        print('Grand father was a honest person')
class Father(GrandFather):
    def quality(self):
        print('Inside Father class')
        print('Father has intelligence and deep thinking power')
class Son(Father):
    def aim(self):
        print("Inside child class")
        print('Child wants to become a software engineer')
abhay=Son()
abhay.gf_quality()
abhay.quality()
abhay.aim()