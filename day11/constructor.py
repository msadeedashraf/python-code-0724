class Employee:
    department = "IT Services"
    salary = "60000"

    def __init__(self, fname, department, salary):
        self.department = department
        self.salary = salary
        self.fname = fname

    def greetings(self):
        print(
            f"Hello {self.fname}, have a nice day.\n Your Department is : {self.department}\n Your base salary is : {self.salary}"
        )


amber = Employee("Amber Forrester", "IT Sales", "120000")
amber.greetings()
