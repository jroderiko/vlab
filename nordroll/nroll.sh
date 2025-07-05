#!/bin/bash
# Script for randomizing NordVPN connection
#
# Function to select random location
function nroll {
	echo "Selecting Location..."
	linum=$((1 + $RANDOM % $nscope)) # selects random number
	nloc=$(sed "${linum}q;d" $1) # uses random number to pick line from file
	echo $nloc
}

# Variables
nloc=" " # selected location
nscope=" " # number of lines in file

# Take roll type from arguements
rolltype="$1"

# Rolltype determines which list to use
case $rolltype in
	l | L)
		nscope="$(sed -n '$=' ~/.config/nordroll/nordl.ls)"
		nroll ~/.config/nordroll/nordl.ls
		;;
	g | G)
		
		nscope="$(sed -n '$=' ~/.config/nordroll/nordg.ls)"
		nroll ~/.config/nordroll/nordg.ls
		;;
	*)
		echo "Error:Incorrect arg";;
esac
nordvpn connect $nloc
