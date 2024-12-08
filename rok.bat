@echo  off
set /P PORT=Enter PORT:
@REM set /P KingDom=Enter KingDom:
@REM set /P Range=Enter Range:
@echo on
".\deps\platform-tools\adb.exe" kill-server
".\deps\platform-tools\adb.exe" connect 127.0.0.1:%PORT%
cd .\
@REM pip install --upgrade pip
@REM pip install Pillow==8.4.0
@REM pip install opencv-python==4.6.0.66
@REM pip install -r requirements.txt
python -W ignore kingdom_scanner_ui.py
PAUSE
