import numpy as np
import cv2
#import librosa
import imutils
import matplotlib.pyplot as plt
import pandas as pd
from utils import *




def cuter():
	images = read_names_files(DIRTY_DATA)
	total = 0
	for i in range(len(images)):
		image = cv2.imread(DIRTY_DATA + images[i])
		print()
		gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
		gray = cv2.GaussianBlur(gray, (3, 3), 0)
		edged = cv2.Canny(gray, 10, 250)
		kernel = cv2.getStructuringElement(cv2.MORPH_RECT, (7, 7))
		closed = cv2.morphologyEx(edged, cv2.MORPH_CLOSE, kernel)
		cnts = cv2.findContours(closed.copy(), cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
		cnts = imutils.grab_contours(cnts)
		for c in cnts:
			rect = cv2.boundingRect(c)
			x,y,w,h = rect
			crop_img = image[y:y+h, x:x+w]
			cv2.imwrite(IMAGE_PATH_CUT +str(total)+ images[i], crop_img)
			#cv2.rectangle(image,(x,y),(x+w,y+h),(0,255,0),2)
			total += 1

cuter()