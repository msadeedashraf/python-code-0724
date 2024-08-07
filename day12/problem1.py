class Epmployee:
    company = "TecZila"

    def __init__(self, name, salary, empno):
        self.name = name
        self.salary = salary
        self.empno = empno


firstEmployee = Epmployee("Paul", 120000, 1112002)
secondEmployee = Epmployee("Salah", 100000, 1112003)
thirdEmployee = Epmployee("Suzane", 160000, 1112004)
fourthEmployee = Epmployee("Amber", 110000, 1112005)


print(
    firstEmployee.name, firstEmployee.company, firstEmployee.salary, firstEmployee.empno
)
print(
    secondEmployee.name,
    secondEmployee.company,
    secondEmployee.salary,
    secondEmployee.empno,
)
print(
    thirdEmployee.name, thirdEmployee.company, thirdEmployee.salary, thirdEmployee.empno
)
print(
    fourthEmployee.name,
    fourthEmployee.company,
    fourthEmployee.salary,
    fourthEmployee.empno,
)
