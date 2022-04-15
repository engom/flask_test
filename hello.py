from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p> Hello, World! This flask script works too. Thank you God. </p>"
