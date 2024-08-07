# s for snake ---  1
# g for gun ----   0
# w for water --- -1
import random

yourChar = input(
    "Enter your choice between \ns for SNAKE\ng for GUN\nw for WATER\nq to QUIT"
)
yourDict = {"s": 1, "g": 0, "w": -1}
revDict = {1: "Snake", 0: "Gun", -1: "Water"}

ai = random.choice([-1, 1, 0])
you = yourDict[yourChar]


print(f"AI selected {revDict[ai]} while you selected {revDict[you]}")

if ai == you:
    print("Its a draw")
else:
    if ai == -1 and you == 1:
        print("You win!")
    elif ai == 1 and you == 0:
        print("You Win!")
    elif ai == 0 and you == -1:
        print("You Win!")

    elif ai == -1 and you == 0:
        print("You Lose!")
    elif ai == 0 and you == 1:
        print("You Lose!")

    else:
        print("something went wrong")

# https://www.geeksforgeeks.org/snake-water-gun-game-using-python/
"""
import random

print("Snake - Water - Gun")
n = int(input("Enter the number of rounds: "))
options = ["s", "w", "g"]
rounds = 1
comp_win = 0
user_win = 0

while rounds <= n:
    print(f"Round {rounds}:\nSnake - 's'\nWater - 'w'\nGun - 'g'")
    try:
        player = input("Choose your option: ")
    except EOFError as e:
        print(e)
        continue

    if player not in options:
        print("Invalid input, try again.\n")
        continue

    computer = random.choice(options)

    if computer == "s":
        if player == "w":
            comp_win += 1
        elif player == "g":
            user_win += 1
    elif computer == "w":
        if player == "g":
            comp_win += 1
        elif player == "s":
            user_win += 1
    elif computer == "g":
        if player == "s":
            comp_win += 1
        elif player == "w":
            user_win += 1

    rounds += 1

if user_win > comp_win:
    print("Congratulations! You won.")
elif comp_win > user_win:
    print("You lose!")
else:
    print("Match Draw!")

# Output: Python Code Explanation
# (Details and explanation provided in the original source 1)


"""
