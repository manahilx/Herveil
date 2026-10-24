@echo off
cd /d "%~dp0"
echo Starting HerVeil locally at http://localhost:8000
echo Keep this window open while using the app.
py -m http.server 8000
pause
