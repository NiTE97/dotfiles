from gpiozero import TrafficLights, Button
from time import sleep
import threading

lights = TrafficLights(25,8,7)
button = Button(21)
longTime = 2
shortTime = 1
threads = []

def redToYellow():
	lights.yellow.on()
	sleep(shortTime)

def yellowToGreen():
	lights.off()
	lights.green.on()
	sleep(longTime)

def greenToYellow():
	lights.green.off()
	lights.yellow.on()
	sleep(shortTime)

def yellowToRed():
	lights.red.on()
	lights.yellow.off()
	sleep(longTime)

def red():
	thread.join()
	print("Button pressed!")
	lights.off()
	lights.red.on()
	sleep(10)
	print("Button Released!")

def buttonClick():
	thread2 = threading.Thread(target=red)
	threads.append(thread2)
	thread2.start()

def routine():
	yellowToRed()
	redToYellow()
	yellowToGreen()
	greenToYellow()

while True:
	global thread, thread2
	threads = []
	thread = threading.Thread(target=routine)
	thread.daemon = False
	threads.append(thread)
	button.when_pressed = buttonClick
	thread.start()

	for t in threads:
		t.join()
