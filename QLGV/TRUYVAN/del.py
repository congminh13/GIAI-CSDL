import os

directory = '.' 

for filename in os.listdir(directory):
    if filename.endswith(".sql"):
        filepath = os.path.join(directory, filename)
        with open(filepath, 'r+') as file:
            lines = file.readlines()
            del lines[0]
            file.seek(0)
            file.writelines(lines)
            file.truncate()
