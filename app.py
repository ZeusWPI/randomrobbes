from flask import Flask, render_template
import os, random

app = Flask(__name__)

@app.route('/')
def hello_world():
    robbe = random.choice(os.listdir("./static/"))
    return render_template("index.html", image_file = robbe)
