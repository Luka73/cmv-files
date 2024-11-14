@echo off
chcp 65001
cls
echo Exécution du script
:: Vérifie si le dossier backup existe, sinon le crée
if not exist "backup"(
  mkdir backup
  echo Le dossier backup a été créé
)

:: Copie les fichiers .log dans le dossier backup
copy *.log .\backup
echo Fichiers .log copiés dans le dossier backup

pause
