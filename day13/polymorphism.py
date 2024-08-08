# polymorphism--overloading ----same function name with different signature
# overriding ----same function name with same signature but different implementation


#  result = add(5,5)
#  add(6,3,8)
#  add(3,9,5,6)
#  result // 10


# function add(num1 , num2)//signature
# {
#     return num1+num2;

# }
# function add(num1 , num2, num3)//signature
# {
#     return num1+num2+num3;

# }
# function add(num1 , num2, num3, num4)//
# {
#     return num1+num2+num3+num4;

# }

# myString = "welcome to CBC!"
# print(len(myString))

# Class Polymorphism

# Multiple Classes with same method names

# Car , Boat, Plane
# give all of them a move method


class Car:
    def __init__(self, brand, model):
        self.brand = brand
        self.model = model

    def move(self):
        print("My Car is moving")


class Boat:
    def __init__(self, brand, model):
        self.brand = brand
        self.model = model

    def move(self):
        print("My Boat is sailing")


class Plane:
    def __init__(self, brand, model):
        self.brand = brand
        self.model = model

    def move(self):
        print("My Plane is flying")


""""""

car1 = Car("Honda", "2020")
boat1 = Boat("Abc", "2023")
plane1 = Plane("Airbus", "380")


# print(car1.move())
# print(boat1.move())
# print(plane1.move())

for x in (car1, boat1, plane1):
    print(x.brand)
    print(x.model)
    x.move()
