#!/bin/bash

if [ "$1" == "help" ]; then
	echo "Paramètre 1 : Votre nom de commit"
	echo "Paramètre 2 : Nom de la branche"
	exit
elif [ "$1" == "" ] | [ "$2" == "" ]; then
	echo "Manque d'un paramètre"
	echo "Paramètre 1 : Votre nom de commit"
	echo "Paramètre 2 : Nom de la branche"
	exit
fi
git add .
git commit -m "$1"
git push origin "$2"
