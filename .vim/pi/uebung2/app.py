import os
from gpiozero import LED
from datetime import datetime
from flask import Flask
from flask import render_template
app = Flask(__name__)

led = LED(25)
led_status = 0

@app.route('/')
@app.route('/index')
def hello():
	led_status = 0
	now = getDate()
	return render_template('index.html', led_status=led_status, now=now)

@app.route('/off')
def off():
	led.off()
	led_status = 0
	now = getDate()
	return render_template('index.html', led_status=led_status, now=now)

@app.route('/on')
def on():
	led.on()
	led_status = 1
	now = getDate()
	return render_template('index.html', led_status=led_status, now=now)

def getDate():
	now = datetime.now()
	now = now.strftime("%d/%m/%Y %H:%M:%S")
	return now

if __name__ == '__main__':
    app.run()
