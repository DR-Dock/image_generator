from tkinter import *
from PIL import ImageTk, Image
from tkinter import filedialog

import pandas as pd
from utils import * 


df = pd.DataFrame(columns=['way', 'class'])
root = Tk()
root.geometry("550x300+300+150")
root.resizable(width=True, height=True)



index = 0
images = read_names_files(IMAGE_PATH_CUT)

def open_img():
	global index
	global panel
	index += 1
	if index == len(images):
		df.to_csv('out.csv')
		root.destroy()
		return 0
	path = IMAGE_PATH_CUT+'\\'+images[index]
	print(path)
	img = Image.open(path)
	img = img.resize((250, 250), Image.ANTIALIAS)
	img = ImageTk.PhotoImage(img)
	panel.pack_forget()
	panel = Label(root, image=img)
	panel.image = img
	panel.pack()

def true_img():
	df.loc[index] = [IMAGE_PATH_CUT+images[index]] + list('1')
	open_img()

def false_img():
	df.loc[index] = [IMAGE_PATH_CUT+images[index]] + list('0')
	open_img()

btn1 = Button(root, text='true img', command=true_img).pack()
btn2 = Button(root, text='false img', command=false_img).pack()

path = IMAGE_PATH_CUT+images[index]
img = Image.open(path)
img = img.resize((250, 250), Image.ANTIALIAS)
img = ImageTk.PhotoImage(img)
panel = Label(root, image=img)
panel.image = img
panel.pack()

root.mainloop()