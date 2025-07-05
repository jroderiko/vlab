#!/bin/bash
# Script for randomizing NordVPN connection
#
# Function to select random location
function nroll { 
	linum=$((1 + $RANDOM % $nscope)) # selects random number
	nloc=$(sed "${linum}q;d" $nlist) # uses random number to pick line from file
	echo "location: $nloc"
}

# Variables
nloc=" " # selected location
nlist=" " # path to location list
nscope=" " # number of lines in file

# Take roll type from arguements
rolltype="$1"

# Rolltype determines which list to use
case $rolltype in
	l | L)
		nscope="25"
		nroll ~/.config/nordroll/nordl.ls
		;;
	g | G)
		
		nscope="126"
		nroll ~/.config/nordroll/nordg.ls
		;;
	*)
		echo "Error:Incorrect arg";;
esac
nordvpn connect $nloc
