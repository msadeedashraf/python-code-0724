"""
import os

my_path = "c:/"
folderContents = os.listdir(my_path)

print(folderContents)
"""

import os


def findSubDirs(directory):
    sub_dir = []
    for root, dir, files in os.walk(directory):
        for dir_name in dir:
            sub_dir.append(os.path.join(root, dir_name))

    return sub_dir


my_path = "D:/CBC/SEProject/fsd_jan_2024/python/python-code-0724"
my_sub_dirs = findSubDirs(my_path)

for my_sub_dir in my_sub_dirs:
    print(my_sub_dir)

"""


import os


def findSubDirs(directory):
    sub_dir = []
    for root, dir, files in os.walk(directory):
        for dir_name in dir:
            sub_dir.append(os.path.join(root, dir_name))

    return sub_dir


my_path = "D:/CBC/SEProject/fsd_jan_2024/python/python-code-0724/"
my_sub_dirs = findSubDirs(my_path)

for my_sub_dir in my_sub_dirs:
    print(my_sub_dir)
"""
