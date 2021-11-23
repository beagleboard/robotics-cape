#!/bin/bash

# turn LEDs off
sudo gpioset 1 93=0   # LED1
sudo gpioset 1 94=0   # LED2
# broken              # LED3
sudo gpioset 1 1=0    # LED4
