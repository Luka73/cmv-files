#!/bin/bash


# Démarrer un processus sleep en arrière-plan
echo "Lancement du sleep 10..."
sleep 10 &

# Démarrer un autre processus sleep en arrière-plan
echo "Lancement du sleep 15..."
sleep 15 &

# Lister les jobs en arrière-plan
echo "Jobs en arrière-plan :"
jobs

# Attendre la fin de tous les jobs
echo "Attente de la fin des jobs..."
wait

# Afficher un message après la fin de tous les jobs
echo "Tous les processus sont terminés."