import pandas as pd
import numpy as np
import cv2
from utils import *

def transformers(file):
	df = pd.read_csv(file)
	df_img = np.array([cv2.resize(cv2.imread(df['way'][i]), (32,32)) for i in range(df.shape[0])]) 
	df_class = np.array([df['class'][i] for i in range(df.shape[0])]) 
	np.save('X_data', df_img)
	np.save('Y_data', df_class)

def transformers_without_classes(way):
	image_names = read_names_files(way)
	df_img = np.array([cv2.resize(cv2.imread(way + image_names[i]), (32,32)) for i in range(len(image_names))])  
	np.save('data_image', df_img)

#transformers('out.csv')
