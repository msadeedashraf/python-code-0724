import requests
import json

response = requests.get(
    "https://raw.githubusercontent.com/jamesmontemagno/app-monkeys/master/MonkeysApp/monkeydata.json"
)

data = response.json()

# print(data)
with open("./day14/monkey.json", "w") as file:
    json.dump(data, file)
print("File Created.")
