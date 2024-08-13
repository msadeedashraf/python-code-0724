from flask import Flask

app = Flask(__name__)


@app.route("/")
def hello_world():
    return "<p>Hello, World!</p>"


@app.route("/blog")
def blog():
    return "<p>This is my Blog</p>"


@app.route("/contact")
def contact():
    return "<p>This is my Contact Page</p>"


if __name__ == "__main__":
    app.run(debug=True)
