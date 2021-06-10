#!/bin/bash
#sleep 10;
internet_connection=false;
connection_string='inet 192'
while [ "$internet_connection" = false ];
do
	router=$(nmcli dev wifi | head -2 | tail -1 | cut -c 28- | cut -c -16);
	nmcli con up id $router

	test_connection=$(ifconfig | grep 'inet 192')
	if (grep -q "$connection_string" <<< "$test_connection"); then
		break;
	fi
done
nm_pid=$(pgrep nm-applet);
pkill -g $nm_pid;


styli.sh -s abstract;
