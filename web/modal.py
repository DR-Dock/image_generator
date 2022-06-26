import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from keras.models import load_model
import numpy as np
import unicorn
from flask import Flask
import base64
from io import BytesIO

app = Flask(__name__)
decoder = load_model('decoder')

@app.route('/generate')
def generate():
	img = decoder.predict(np.expand_dims(np.random.uniform(-1., 1., 10), axis=0))
	plt.imshow(img.squeeze(), cmap='gray')
	plt.axis('off')
	buf = BytesIO()
	plt.savefig(buf, format="png")
	data = base64.b64encode(buf.getbuffer()).decode("ascii")
	return {'result': data}

if __name__ == '__main__':
	app.run()





