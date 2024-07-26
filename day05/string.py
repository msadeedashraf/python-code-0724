# num1 = input("Enter the number: ")
# # print(type(num1))
# print("Cube of ", num1, "is ", int(num1) ** 3)

# String
fname = "Sadeed"
subString = fname[0:3]  # start at the 0 index all the way till 3 (excluding)
print(subString)
print(fname[0])

print(fname[-4:-1])
print(fname[1:4])

print(fname[:4])
print(fname[1:])

print(len(fname))
print(fname.endswith("eed"))
print(fname.startswith("s".capitalize()))

print(fname.upper())

mymsg = 'Welcome to CBC!\nHope you are having "nice" day. '
print(mymsg)


myName = input("Enter your name: ")
mymsg2 = f"Good Morning {myName}"
print(mymsg2)

print(mymsg2.find("Morning"))
