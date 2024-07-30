# def greeting():
#     print("Welcome to CBC!")


# def mygreeting(myName):
#     print("Welcome to CBC! " + myName)


# greeting()
# mygreeting("Salah")

# mygreeting("Suzane")


# Unknown arguments
# def student(*myStudents):
#     myLen = len(myStudents)
#     print("The new student : " + myStudents[myLen - 1])


# student("Suzane", "Amber", "Salah", "Syed", "Sadeed")


def average():
    a = int(input("Enter your number : "))
    b = int(input("Enter your number : "))
    c = int(input("Enter your number : "))

    avg = (a + b + c) / 3
    print(avg)


average()
