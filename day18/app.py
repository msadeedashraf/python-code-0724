from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime

app = Flask(__name__)

# Configure the SQLite database
app.config["SQLALCHEMY_DATABASE_URI"] = "sqlite:///todo.db"
app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False

db = SQLAlchemy(app)


class Todolist(db.Model):
    taskid = db.Column(db.Integer, primary_key=True)
    task = db.Column(db.String(250), nullable=True)
    desc = db.Column(db.String(500), nullable=True)
    creation_date = db.Column(db.DateTime, default=datetime.utcnow)

    # def __repr__(self) -> str:
    #     return f"{self.taskid} - {self.task} - {self.desc}"


@app.route("/")
def hello_world():
    todo = Todolist(task="reading a book", desc="Dotcom Secrets")
    db.session.add(todo)
    db.session.commit()
    myalltodolist = Todolist.query.all()
    # print(myalltodolist)
    # return "<p>Hello, World!</p>"
    return render_template("index.html", myalltodolist=myalltodolist)


@app.route("/gettodolist")
def gettodo():
    myalltodolist = Todolist.query.all()
    print(myalltodolist)
    return "<p>Get All To Dos</p>"


if __name__ == "__main__":
    # Create database tables in an application context
    with app.app_context():
        db.create_all()
    app.run(debug=True)
