Automating creating folders and files and copy all the content within the files

Directory Copy Script
This script copies files and directories from a source directory to a destination directory while maintaining the original directory structure. It recursively traverses through subdirectories and copies both files and folders to the target location.

Features
Maintains the structure of directories during the copy process.
Handles both files and directories recursively.
Prompts the user to input the source and destination directories.
Automatically creates directories if they don't exist.
Usage
Make the script executable:

Before running the script, make sure it has executable permissions:

bash
Copy code
chmod +x copy_directory.sh
Run the script:

You can run the script with the following command:

bash
Copy code
./copy_directory.sh
Provide input:

The script will prompt you for the source and destination directories:

javascript
Copy code
Enter the source directory: /path/to/source
Enter the destination directory: /path/to/destination
Copy process:

The script will copy all files and folders from the source directory to the destination directory, preserving the original folder structure.
Example
bash
Copy code
./copy_directory.sh
Enter the source directory: /home/user/source_folder
Enter the destination directory: /home/user/destination_folder
Copy completed from '/home/user/source_folder' to '/home/user/destination_folder'.
Error Handling
If either the source or destination directory is not provided, the script will display an error and exit.
Requirements
Bash (Linux/Mac)
License
This script is provided as-is under the MIT License.
