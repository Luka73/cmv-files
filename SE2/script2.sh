#!/bin/bash

# Démarrer un processus sleep en arrière-plan
echo "Lancement du sleep 10..."
sleep 10 &  # Le processus de sleep 10 secondes est lancé en arrière-plan
PID1=$!     # Capture le PID du premier processus en arrière-plan


# Démarrer un autre processus sleep en arrière-plan
echo "Lancement du sleep 15..."
sleep 15 &  # Le processus de sleep 15 secondes est lancé en arrière-plan
PID2=$!     # Capture le PID du deuxième processus en arrière-plan


# Afficher un message dès que le premier job se termine
echo "Attente de la fin du premier job..."
wait $PID1   # Attend la fin du premier job
echo "Le premier processus (PID $PID1) est terminé."


# Afficher un message dès que le deuxième job se termine
echo "Attente de la fin du deuxième job..."
wait $PID2   # Attend la fin du deuxième job
echo "Le deuxième processus (PID $PID2) est terminé."


echo "Tous les processus sont terminés."