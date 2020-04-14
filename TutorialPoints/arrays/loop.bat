@echo off

:: Loop form 0 to 10
for /l %%x in (0,1,10) do (
    echo %%x
)
:: The /l flag makes the (0,1,10) to NOT be treated as a list 

:: Loop through a list
for %%a in (Dog,Lion,Cat) do echo %%a