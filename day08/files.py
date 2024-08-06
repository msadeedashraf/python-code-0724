# try:
#     f = open("../day07/day.txt", "r")
#     print(f.read())
#     f.close
# except FileNotFoundError as e:
#     print(f"File not found : {e}")

# myText = "Welcome to CBC!"
# f = open("../day08/day.txt", "w")
# f.write(myText)
# f.close

f = open("demofile.txt", "r")
for x in f:
    print(x)
