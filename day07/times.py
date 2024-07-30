# for x in range(2, 6):
#     for y in range(1, 11):
#         print(f"{x} * {y} = {x*y}")


# for a in range(6):
#     print(a)

# myList = [50, 63, 85, 15]
# for x in myList:
#     print(x)


# myList = "Welcome to CBC!"
# for x in myList:
#     print(x)


# myList = [5, 10, 6, 4]
# for x in myList:
#     print(x)
# else:
#     print("Completed Printing")

# While Loop
# myList = 1
# while myList < 10:
#     print(myList)
#     myList += 1

students = ["Amber", "Suzane", "Salah", "Syed", "Suze", "Jhonathan"]
i = 2
while i < len(students):
    print(students[i])
    i += 1


for i in range(100):
    if i == 34:
        break  # Exit the loop right now
    print(i)

for i in range(100):
    if i == 34:
        continue  # Skip this iteration
    print(i)
