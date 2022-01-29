@ECHO OFF
:: Syntax: set_folder-icon.cmd *iconpath,iconindex*
:: Example: set_folder-icon.cmd "C:\folder.ico,0"

SETLOCAL
set VER=1.0.1
set DATA=29.01.2022
set iconpath-index=%1
set iconpath-index=%iconpath-index:"=%
set scriptpath=%~dp0
set scriptpath=%scriptpath:~0,-1%

ECHO.
ECHO ==================================================
ECHO Ordnersymbol Skript Ver. %ver% (%data%)
ECHO Written by Andyt for BlackSeals.net
ECHO Promoted development by BlackSeals.net Technology
ECHO Copyright 2020 by BlackSeals
ECHO ==================================================
ECHO.
ECHO.

ECHO Ordnersymbol: %iconpath-index%
ECHO Ordner: %scriptpath%

::Kontrolle ob ein Paramater eingeben wurde. Es wird keine Gültigkeit kontrolliert.
if %1 == "" (
ECHO Es fehlt ein notwendiger Parameter (Ordnersymbol und Symbolindex)
GOTO END
)

::Erstellung von desktop.ini im aktuellen Pfad.
ECHO [.ShellClassInfo] >%scriptpath%\desktop.txt
ECHO IconResource=%iconpath-index% >>%scriptpath%\desktop.txt
REN %scriptpath%\desktop.txt desktop.ini

::Setzen der Attribute bei Ordner und Datei.
attrib +R %scriptpath%
attrib +S +H %scriptpath%\desktop.ini


:END
