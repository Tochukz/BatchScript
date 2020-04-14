:: Turn of echo to prevent all the commands being displayed on the terminal at runtime
@echo off

:: Defining an array one element at a time
set animals[0]=Lion
set animals[1]=Goat
set animals[2]=Sheep
set animals[3]=Elephant
echo %animals[0]%
for /l %%x in (0,1,3) do (
    call echo %%animals[%%x]%%
)


:: Define a list of values. The values may be separeted by a comma or space
set colors=Red Blue Green
for %%c in (%colors%) do (
    echo %%c
)

