#!/bin/bash

# Ouvrir Firefox en arrière-plan
echo "Ouverture de Firefox..."
firefox &

# Démarrer un processus sleep en arrière-plan
echo "Lancement de sleep..."
sleep 20 &

# Démarrer un autre processus sleep en arrière-plan
echo "Lancement du deuxième sleep..."
sleep 10 &

# Lister les jobs en arrière-plan
echo "Jobs en arrière-plan :"
jobs

# Attendre la fin de tous les jobs
echo "Attente de la fin des jobs..."
wait

# Afficher un message après la fin de tous les jobs
echo "Tous les processus sont terminés."

# Optionnel : Ramener Firefox au premier plan (si encore en cours d'exécution)
echo "Ramener Firefox au premier plan..."
fg %1
