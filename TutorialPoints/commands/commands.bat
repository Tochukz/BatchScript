::Turnoff echo
::@echo off

::Show the version of MS-DOS
ver

:: Displays all file extension and associated file type
assoc

:: Display only .bat extensions
assoc | find ".bat"

:: Other usefull operations with assoc
assoc > lists.txt
assoc | find ".bat" > listBat.txt

:: Create a new file
echo Hello Batch Script World > file1.txt

::::Directory Operations:::
::Make a new directory
md newfolder

:: Rename a directory
rename folder1 folder2

:: Move directory from one location to another. Here the target directory is renamed in the process.
move foldera folder1/folderb

::::: File Operation :::::
::Rename a file
rename file1.txt filea.txt

:: Copy files to another location. You may use full file path when applicable
copy file1.txt file2.txt

:: Copy all files/folder from one directory to another
xcopy "build\*" "dist\bigtop" /s

:: Delete a file
del file1.txt

:: Delete all files from a folder recursively(/s). You will be prompted to confirm once for each sub directory
del /s folder1\ *.*
:: or
del folder\
:: use /f to force delete readonly files.

:: Delete all files from a folder recursively(/s). Confirms affimative(/q) on prompt automatically
del /s /q folder1\*.*

:: Move syntax - move [/y | /-y] [path/to/target/file.txt] [path/to/destination]
:: /y  - suppress prompting to confirm file overwrite
:: /-y - automatically confirm file overwriting

:: Move  a file
move file1.txt folder1

:: Move all files from one directory to another
move folder1\*.* folder2

:: Move only .txt files from on dirctory to another
move folder2\*.txt folder1


:: Date
Date
echo %date%

:: Exit the batch script
:: exit
