@echo off
cls
color 0a
rem ***********************************************

echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo         *****************
echo         *               *
echo         *               *
echo         *     ***********
echo         *     *
echo         *     *******      *****************  *****************  ***** ********   *****************
echo         *           *      *               *  *               *  *   **   **   *  *               *
echo         *           *      *               *  *   *********   *  *   *   *  *  *  *   *********   *
echo         *     *******      *     ***********  *   *       *   *  *     *    ****  *   *       *   *
echo         *     *            *     *            *   *       *   *  *   *            *   *********   *
echo         *     *            *     *            *   *       *   *  *   *            *               *
echo         *     ***********  *     ***********  *   *       *   *  *   *            *   *************
echo         *               *  *               *  *   *********   *  *   *            *   *
echo         *               *  *               *  *               *  *   *            *   *
echo         *****************  *****************  *****************  *****            *****
echo.
echo.
echo.
echo         Welcome to Ecorp(Evil Corporation)..............
echo.
echo         Please press Enter...
pause>nul
cls
echo.
echo.
echo.
echo.
echo         *******************************************************************************************
echo.         
echo                                    Please The Fill The Form Below.....
echo.
echo         *******************************************************************************************
echo. 
echo.
echo.
echo.
SET /p user=   [*] Please enter your name: 
SET /p email=  [*] Please enter your email: 
SET /p laptop= [*] Please enter the manufacturer of your laptop: 
echo.
echo.
echo          Processing...
timeout 5 > nul
echo.
echo.
echo Welcome %user% to our Ecorp app. Here at Ecorp we help you create a guest account or administrator account on PC. We also help you change the password of your account and also see the system information about your PC. Also we will be sending you mails to your account %email%.
echo.
echo.
echo Please press enter to continue to the next page...
pause > nul

: START
cls
color 04
echo.
echo.
echo         *********************************************************************************************
echo.
echo                                   Please Select From The Following.....
echo.
echo         *********************************************************************************************
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo            [*] 1. Create new account.
echo            [*] 2. Change the password of your account.
echo            [*] 3. See your system information.
echo            [*] 4. See the number of accounts on your windows machine.
echo.
echo.
echo.
SET /p uinput= [#] Please select one of the above: 

if %uinput%==1 (
:LOOP
cls
echo.
echo.
echo.
echo         ==============================================================================================
echo.
echo                                        *Creating A New Account...*
echo.
echo         ==============================================================================================
echo.
echo.
echo            [*] 1. Create a guest account.
echo            [*] 2. Create an administrator account.
echo.
echo.
echo.
SET /p acctype= [#] What type of account would you like to create:- 
)

if %acctype%==1 (
SET /p name= [*] What name would you like to give the account:- 
echo            Creating account...
timeout 3 > nul
net user %name% /add > nul
net user %name% /active:yes > nul
net localgroup guests %name% /add > nul
net user %name% *
echo.
echo  [-] Your account has been created successfully with the name %name%.
echo.
echo  Thank you.
echo  Press enter...
pause > nul
goto :START
)

if %acctype%==2 (
SET /p %aname%= [#] What name would you like to give the account:- 
echo               Creating account...
timeout 3 > nul
net user %aname% /add > nul
net user %aname% /active:yes > nul
net localgroup administrators %aname% /add > nul
net user %aname% *
echo.
echo   [-] Your account has been created with the name %aname%.
echo.
echo   Thank you.
echo   Press enter...
pause > nul
goto :START
)

if %acctype% GTR 2 (
echo   [-] You selected a wrong option please select from the above.
echo.
echo.
echo   Press B to go back...
goto :LOOP
)