import os
import shutil # shell utility

targetDir = r"D:\demo"

fileTypes = {
    "Images" : [".jpeg", ".jpg", ".png", ".gif"],
    "Videos" : [".mp4", ".mkv", ".avi", ".webm"],
    "Documents" : [".pdf", ".docx", ".txt", ".pptx"],
    "Music" : [".mp3", ".wav"],
    "Archives" : [".zip", ".rar", ".7zip"],
    "Programs" : [".exe", ".msi"]
}

def get_folder(extension):
    for folder, extensions in fileTypes.items():
        if extension in extensions:
            return folder
    return "others"

def Organize_files():
    for file in os.listdir(targetDir):
        filePath = os.path.join(targetDir,file)
        if os.path.isdir(filePath):
            continue

        _ ,ext = os.path.splitext(file)
        ext = ext.lower()

        folder_name = get_folder(ext)
        dest_folder = os.path.join(targetDir, folder_name)

        os.makedirs(dest_folder, exist_ok=True)
        shutil.move(filePath, os.path.join(dest_folder, file))

        print(f"Moved {file} to {folder_name}")

if __name__ == '__main__':
    Organize_files()
    print("Done organizing!")
