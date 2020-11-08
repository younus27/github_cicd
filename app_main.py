from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
    return "Hello, world!"

@app.route("/test")
def index():
    return "You are on the test route"

if __name__ == "__main__":
    app.run()

