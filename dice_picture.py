#!/usr/bin/env python3

import fnmatch
import os
import time
import shutil

PATH1 = './store'
PATH2 = './textures'
lPics = []
for file in os.listdir(PATH1):
    if fnmatch.fnmatch(file, '*.png'):
        lPics.append(file)
        
# Nummer berechnen
num = int(time.time() / (60*60*24))
num = num % len(lPics)

lPics.sort()

src = os.path.join(PATH1, lPics[num])
dst = os.path.join(PATH2, "picture_of_the_day_texture.png")
shutil.copy(src, dst)
os.system("convert %s -resize 256x256! %s" % (dst, dst))
os.system("pngquant --skip-if-larger --quality=80 --strip %s --ext .png --force" % dst)

