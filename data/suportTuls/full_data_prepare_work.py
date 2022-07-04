from cutImage import *
from transform import *
import joblib

def main():
	cuter()
	print(1)
	transformers_without_classes(IMAGE_PATH_CUT)
	print(2)
	lr = joblib.load("classificator.pkl")
	X = np.load('data_image.npy', allow_pickle=True)
	X_transform = (X / 255).copy()
	X_transform = np.array([ i.reshape(i.shape[0]*i.shape[1]*i.shape[2]) for i in X_transform])
	predict = lr.predict(X_transform)
	X_false = X[np.where(predict == 0)]
	X_true = X[np.where(predict == 1)]
	print('shape false class:',X_false.shape)
	print('shape true class:',X_true.shape)
	np.save('X_false', X_false)
	np.save('X_true', X_true)


if __name__ == '__main__':
	main()