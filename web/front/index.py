from flask import render_template, request, jsonify
from flask import Flask
import matplotlib
matplotlib.use('Agg')
import requests

app = Flask(__name__)






@app.route("/", methods=['GET', 'POST'])
def hello():
    print(1)
    r = requests.get('http://127.0.0.1:5000/generate', verify=False).json()
    print(2)
    if request.method == 'POST':
        return jsonify(image=r['result'])
    return render_template('index.html', image=r['result'])
    

if __name__ == '__main__':
    app.run(host="127.0.0.1", port=5001, debug=False)
