#!/bin/bash



###
# Skript zum Checken ob der Rechner mit dem Internet verbunden ist
###

internet_connection=false;
connection_String='inet 192' 				#Substring der Ausgabe wenn verbunden
while [ "$internet_connection" = false ];
do
	test_connection=$(ifconfig | grep 'inet 192');
	
	if grep -q "$connection_String" <<< "$test_connection"; then 	#Testen ob Substring enthalten ist

		$internet_connection = true;
		break;
	else 
		echo "false";
	fi
done

styli.sh -k -s summer; 			#Ausfuehren des eigentlichen Skripts
