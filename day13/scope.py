num1 = 60


def add():

    print(num1)
    # result = 0

    def multiply():
        # nonlocal result
        global result
        result = num1 * 2
        return result

    print(multiply())


def subtract():
    print(num1 - 10)
    # print(result - 10)


add()

subtract()
