class Employee:
    department = "Technical Services"  # class attributes
    salary = "100000"  # class attributes


amber = Employee()
suzane = Employee()
suze = Employee()
salah = Employee()


amber.role = "Full Stack Developer"  # instance attribute
suzane.role = "Software Engineer"
suze.role = "Testing"
salah.role = "BSA"
salah.salary = 80000

print(amber.role)
print(amber.salary)
print(suzane.role)


print(salah.role)
print(salah.salary)
