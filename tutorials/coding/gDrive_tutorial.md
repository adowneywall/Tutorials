## gDrive

### What is gDrive
A command line tool developed by [Petter Rasmussen](https://github.com/prasmussen) which allows you to download, upload, and share files and folders from your machine (local or remote) to a linked google drive.

[**Github link**](https://github.com/gdrive-org/gdrive)

### Installation Steps

**Download the gdrive file**
```
wget https://github.com/gdrive-org/gdrive/releases/download/2.1.0/gdrive-linux-x64
```
* This is the most recent version as of 2019-07-31, check the github for the latest [releases](https://github.com/gdrive-org/gdrive/releases)
* Also the link above is for a 64 bit linux machine,but they also have releases for mac and windows.

**Rename the file**
```
mv gdrive-linux-x64 gdrive
```

**Make is executable**
```
chmod +x gdrive
```
* You can also move it to your folder of choice and update your [`$PATH` variable]() with it's location if you want to be able to easily execute the gdrive command from any folder.

Initial the google drive link
```
gdrive about
```
Follow the gdrive prompt that appears on the command line. You will:
1) Have to copy the link provided and paste in into a web browser, then follow the instructions from there which will include letting gdrive have permission to access they specific drive you want linked.
2) After this a verification code will be generated, this will need to be copied and pasted back into the command line prompt.

### Basic commands

**Make a directory on your google drive**
```
gdrive mkdir nameOFDirectory
```

**Upload file from local directory to google drive**
```
gdrive upload nameOfFile
```
* Default looks in current folder, but will should also work if you provide an absolute path to a file or folder outside current folder.
* Some options:
    * `-p` : parent flag. Provides a specific folder destination (provided as a <fileID> number)
    * `-r` : recurisive. Will Upload all files and folder recursively.

**Download file from google drive to local drive**
```
gdrive download <fileID>
```
* This is a bit more of a process and requires finding the unique fileID that gdrive creates for files and folders
* Some options:
    * `-p` : parent flag. Provides a specific folder destination (provided as a <fileID> number)
    * `-r` : recurisive. Will Upload all files and folder recursively.

**Use sync to upload and entire folder to a new google drive folder**
```
gdrive mkdir nameOfNewFolder
# folder on google drive needs to be empty
gdrive upload nameOfPathToLocalDirectory <fileID(of newFolder)>
```
**Use sync to download entire folder to a new google drive**
Note: needs to have a fileID to work
```
gdrive download <fileID(of googledrive Folder)> nameOfPathToLocalDirectory
```
This does NOT need to be downloading files into an open local directory

### Other thoughts
* After playing with the tool a while I noticed that it is quite slow compared to other file transfer methods, but should be fine for relatively small files or folders (i.e. small txt or html outputs associated with log files or entry level metadata).
* The `upload` and `download` commands are a little quarky and generally do not work on google files (also may not work on a few other file types as well, this has not been exhaustively been examined). However, import and export functions appear to allow users to overcome this issue, by convert between google formatted files and conventional file formats. They do not always seem to work as expected (e.g. .csv file converted to google doc rather than spreadsheet).
* Sync is similar to previous functions for moving data but I did notice that editing folders on google drive did not always alter the actual folder contents when downloaded from google drive using `gdrive sync download`. This maybe a problem if you are looking to download the most recent files in a folder. 
