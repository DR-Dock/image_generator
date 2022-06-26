from flask import render_template, request, jsonify
from flask import Flask
import numpy as np
import base64
from io import BytesIO
from keras.models import load_model
import matplotlib
import matplotlib.pyplot as plt
import requests
matplotlib.use('Agg')

app = Flask(__name__)






@app.route("/", methods=['GET', 'POST'])
def hello():
    r = requests.get('http://127.0.0.1:5000/generate', verify=False).json()
    if request.method == 'POST':
        return jsonify(image=r['result'])
    return render_template('index.html', image=r['result'])
    

if __name__ == '__main__':
    app.run(host="127.0.0.1", port=5001, debug=False)
