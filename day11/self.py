class Employee:
    department = "IT Services"
    salary = "60000"

    def greetings(self):
        print(
            f"Hello, have a nice day.\n Your Department is : {self.department}\n Your base salary is : {self.salary}"
        )


amber = Employee()
amber.greetings()

amber.salary = 90000
amber.greetings()
