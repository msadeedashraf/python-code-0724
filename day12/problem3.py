from random import randint


class AirTravel:
    to = None
    fro = None

    def __init__(self, flightNo, airLine, departTime):
        self.flightNo = flightNo
        self.airLine = airLine
        self.departTime = departTime

    def booking(self, to, fro):
        self.to = to
        self.fro = fro
        print(
            f"Your ticked is booked in {self.flightNo} traveling from {self.fro} to {self.to}"
        )

    def checkStatus(self):
        print(
            f"Flight no {self.flightNo} with {self.airLine} is departing at {self.departTime}"
        )

    # def checkFare(self, to, fro):
    def checkFare(self):
        print(
            f"You fare for traveling from from {self.fro} to {self.to} is {randint(250,5000)} "
        )


myTravelPlan = AirTravel("AC201", "Delta", "1340")

myTravelPlan.booking("London", "Toronto")
myTravelPlan.checkStatus()
# myTravelPlan.checkFare("London", "Toronto")
myTravelPlan.checkFare()
# Change the above code where checkFare is not asking for to and from parameter
