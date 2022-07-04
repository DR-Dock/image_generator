import os


DIRTY_DATA = 'C:\\Users\\Titor\\Desktop\\image generator\\data\\images\\'
IMAGE_PATH_CUT = 'C:\\Users\\Titor\\Desktop\\image generator\\data\\cut images\\'


def read_names_files(way):
	for i in os.walk(way):
		pass
	return i[2]