# Inheritance Class Polymorphism


class Vehicle:
    def __init__(self, brand, model, color):
        self.brand = brand
        self.model = model
        self.color = color

    def move(self):
        print("My vehicle is moving")


class Car(Vehicle):
    def move(self):
        print("My Car is moving")


class Boat(Vehicle):
    def move(self):
        print("My Boat is sailing")


class Plane(Vehicle):
    def move(self):
        print("My Plane is flying")


car1 = Car("Honda", "2020", "")
boat1 = Boat("Abc", "2023", "Red")
plane1 = Plane("Airbus", "380", "")


for x in (car1, boat1, plane1):
    print(x.brand)
    print(x.model)
    print(x.color)
    x.move()
