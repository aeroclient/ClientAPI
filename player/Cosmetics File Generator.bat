@echo off
title Cosmetic File Generator ~ ArcaneCiCi (cd14d61/master)
echo Enter the UUID of the person you want to apply cosmetics to.
set /p "uuidinput=UUID:"

echo Enter preferred wings scaling.
set /p "scale_input=Scale:"

:top
ver >nul
cls
echo.
echo What would you like to do?
echo.
echo [1] Generate a file for one cape only
echo [2] Generate a file for one set of wings only
echo [3] Generate a file for both wings and a cape
choice /c 123 /n

if errorlevel 1 set selection=option1
if errorlevel 2 set selection=option2
if errorlevel 3 set selection=option3
goto %selection%

:option1
cls
echo.
echo Enter the name of the cape you want to apply to %uuidinput%.
set /p "capeinput1=Cape:"

echo { >> %uuidinput% 
break<%uuidinput%
echo    "uuid":"%uuidinput%", >> %uuidinput%
break<%uuidinput% 
echo    "username":null, >> %uuidinput% 
break<%uuidinput%
echo    "cosmetics":{ >> %uuidinput% 
break<%uuidinput%
echo       "%capeinput1%":{ >> %uuidinput% 
break<%uuidinput%
echo          "name":"%capeinput1%", >> %uuidinput% 
break<%uuidinput%
echo          "type":"cape", >> %uuidinput% 
break<%uuidinput%
echo          "scale":0.16, >> %uuidinput% 
break<%uuidinput%
echo          "active":true, >> %uuidinput% 
break<%uuidinput%
echo          "resourceLocation":"%capeinput1%" >> %uuidinput% 
break<%uuidinput%
echo       } >> %uuidinput% 
break<%uuidinput%
echo    } >> %uuidinput% 
break<%uuidinput%
echo } >> %uuidinput% 
break<%uuidinput%
goto top

:option2
cls
echo.
echo Enter the name of the wings you want to apply to %uuidinput%.
set /p "wingsinput2=Wings:"

echo { >> %uuidinput% 
break<%uuidinput%
echo    "uuid":"%uuidinput%", >> %uuidinput%
break<%uuidinput% 
echo    "username":null, >> %uuidinput% 
break<%uuidinput%
echo    "cosmetics":{ >> %uuidinput% 
break<%uuidinput%
echo       "%wingsinput2%":{ >> %uuidinput% 
break<%uuidinput%
echo          "name":"%wingsinput2%", >> %uuidinput% 
break<%uuidinput%
echo          "type":"dragon_wings", >> %uuidinput% 
break<%uuidinput%
echo          "scale":%scale_input%, >> %uuidinput% 
break<%uuidinput%
echo          "active":true, >> %uuidinput% 
break<%uuidinput%
echo          "resourceLocation":"%wingsinput2%" >> %uuidinput% 
break<%uuidinput%
echo       } >> %uuidinput% 
break<%uuidinput%
echo    } >> %uuidinput% 
break<%uuidinput%
echo } >> %uuidinput% 
break<%uuidinput%
goto top

:option3
cls
echo.
echo Enter the name of the wings you want to apply to %uuidinput%.
set /p "wingsinput3=Wings:"
echo.
echo Enter the name of the cape you want to apply to %uuidinput%.
set /p "capeinput3=Cape:"

echo { >> %uuidinput% 
break<%uuidinput%
echo    "uuid":"%uuidinput%", >> %uuidinput%
break<%uuidinput% 
echo    "username":null, >> %uuidinput% 
break<%uuidinput%
echo    "cosmetics":{ >> %uuidinput% 
break<%uuidinput%
echo       "%wingsinput3%":{ >> %uuidinput% 
break<%uuidinput%
echo          "name":"%wingsinput3%", >> %uuidinput% 
break<%uuidinput%
echo          "type":"dragon_wings", >> %uuidinput% 
break<%uuidinput%
echo          "scale":%scale_input%, >> %uuidinput% 
break<%uuidinput%
echo          "active":true, >> %uuidinput% 
break<%uuidinput%
echo          "resourceLocation":"%wingsinput3%" >> %uuidinput% 
break<%uuidinput%
echo }, >> %uuidinput% 
break<%uuidinput%
echo       "%capeinput3%":{ >> %uuidinput% 
break<%uuidinput%
echo          "name":"%capeinput3%", >> %uuidinput% 
break<%uuidinput%
echo          "type":"cape", >> %uuidinput% 
break<%uuidinput%
echo          "scale":0.16, >> %uuidinput% 
break<%uuidinput%
echo          "active":true, >> %uuidinput% 
break<%uuidinput%
echo          "resourceLocation":"%capeinput3%" >> %uuidinput% 
break<%uuidinput%
echo       } >> %uuidinput% 
break<%uuidinput%
echo    } >> %uuidinput% 
break<%uuidinput%
echo } >> %uuidinput% 
break<%uuidinput%
goto top