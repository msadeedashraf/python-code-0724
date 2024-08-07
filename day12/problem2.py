class Calculator:
    def __init__(self, n):
        self.n = n

    def square(self):
        print(f"Square of {self.n} is : {self.n*self.n}")

    def cube(self):
        print(f"Cube of {self.n} is : {self.n*self.n*self.n}")

    def squareRoot(self):
        print(f"Squareroot of {self.n} is : {self.n**1/2}")

    @staticmethod
    def greeting():
        print("Welcome to CBC!")


cal = Calculator(4)

cal.greeting()
cal.cube()
cal.square()
cal.squareRoot()
