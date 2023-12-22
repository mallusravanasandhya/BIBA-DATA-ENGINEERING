class Father():
    def f_quality(self):
        print('Inside Father class')
        print('Father has intelligence and deep thinking power')
    def f_nature(self):
        print('He is strict in priciple')
class Mother:
    def m_quality(self):
        print("Inside Mother class")
        print("Mother is a good cook")
    def m_nature(self):
        print('She has soft mind')
class Son(Father,Mother):
    def aim(self):
        print("Inside child class")
        print('Child wants to become a software engineerand has good cooking knowledge')
ram=Son()
ram.f_quality()
ram.f_nature()
ram.m_quality()
ram.m_nature()
ram.aim()