from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy  # ORM
from datetime import datetime
from sqlalchemy import Integer, String
from sqlalchemy.orm import Mapped, mapped_column
from sqlalchemy.orm import DeclarativeBase


class Base(DeclarativeBase):
    pass


db = SQLAlchemy(model_class=Base)

# create the app
app = Flask(__name__)
# configure the SQLite database, relative to the app instance folder
app.config["SQLALCHEMY_DATABASE_URI"] = "sqlite:///todolist.db"

# initialize the app with the extension
db.init_app(app)


class Todolist(db.Model):
    taskid = db.Column(db.Integer, primary_key=True)
    task = db.Column(db.String(250), nullable=True)
    desc = db.Column(db.String(500), nullable=True)
    creation_date = db.Column(db.DateTime, default=datetime.utcnow)

    def __repr__(self) -> str:
        return f"{self.taskid} - {self.task}"


with app.app_context():
    db.create_all()


@app.route("/")
def defaultPage():
    todo = Todolist(
        task="Complete the assignment",
        desc="finish the javascript assignment by Aug 20th 2024",
    )
    db.session.add(Todolist)
    db.session.commit()

    return render_template("index.html")


if __name__ == "__main__":
    app.run(debug=True)
