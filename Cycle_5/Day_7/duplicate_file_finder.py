import os

target_dir = r"D:\demo2"

def find_duplicates():
    size_dict = {}

    # Group files by their size
    for file in os.listdir(target_dir):
        file_path = os.path.join(target_dir, file)
        if os.path.isdir(file_path):
            continue

        size = os.path.getsize(file_path)
        if size in size_dict:
            size_dict[size].append(file_path)
        else:
            size_dict[size] = [file_path]

    # Print duplicates (files with the same size)
    found = False
    for size, files in size_dict.items():
        if len(files) > 1:
            found = True
            print(f"Duplicate files of size {size} bytes:")
            for f in files:
                print(f"  {f}")

    if not found:
        print("No duplicate files found.")

if __name__ == '__main__':
    find_duplicates()
    print("Duplicate file search complete!")
