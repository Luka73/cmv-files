@echo off
cls
echo Execution du script
:: Verifie si le dossier backup existe, sinon le cree
if not exist "backup"(
  mkdir backup
  echo Le dossier backup a ete cree
)

:: Copie les fichiers .log dans le dossier backup
copy *.log .\backup
echo Fichiers .log copies dans le dossier backup

pause
