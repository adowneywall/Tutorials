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





