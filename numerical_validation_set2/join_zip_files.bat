@echo off
echo Unione delle parti ZIP in corso...
setlocal

:: Trova automaticamente il nome base del file ZIP
for %%F in (*.zip.001) do set BASE=%%~nF

:: Ricompone il file ZIP
copy /b %BASE%.* "%BASE%_completo.zip"

echo Operazione completata! Il file risultante è: %BASE%_completo.zip
echo Premi un tasto per uscire...
pause
