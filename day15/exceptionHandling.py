# Exception  Handling

# try
# except
# else
# finally


# try:
#     fname = "Sadeed"
#     print(fname)

#     lastname = "chris"
#     print(lastname)

# except NameError:
#     print("x is not defined")
# except:
#     print("something went wrong")


# try:
#     print("Greeting")
#     # fname = "Sadeed"
#     print(fname)

# except:
#     print("Something Went Wrong")
# else:
#     print("Nothing went wrong")


# try:
#     print("Greeting")
#     # fname = "Sadeed"
#     print(fname)

# except:
#     print("Something Went Wrong")
# finally:
#     print("clean up")


# try:
#     f = open("./demofile.txt")
#     try:
#         f.write("Lorum Ipsum")
#     except:
#         print("Something went wrong when writing to the file")
#     finally:
#         f.close()
# except:
#     print("Something went wrong when opening the file")


# x = -1

# if x < 0:
#     raise Exception("Sorry, no numbers below zero")


x = "Hello"

if not type(x) is int:
    raise TypeError("Only integers are allowed")

print(x)
