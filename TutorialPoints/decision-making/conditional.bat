@echo off
set user=%~1
::if statement
if %user%==tochukz echo User is Tochukwu

::if-else statement
if %user%==tochukz (echo Welcome %user%) else (echo Welcome Guest)

::block if-else statement
if %user%==tochukz (
  echo Welcome %user%
) else (
  echo Welcome Guest
)

:: if-defined statement
if defined user (echo User is defined)

:: if-exists statement
if exist test.txt (echo test.txt exists)

::putting them together
if defined user (
  ::if the directory does not exits, create it
  if not exist user md user
  ::if the file name does not in the directory, create it
  if not exist %user% echo %user% > user\%user%.txt
)
