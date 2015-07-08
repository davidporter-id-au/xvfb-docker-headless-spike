#!/bin/bash

export DISPLAY=:0
Xvfb -screen 0 800x600x16 -ac &
fluxbox &
sudo service ssh start
x11vnc -display :0 -nopw

# Kick off tests here: 

bash 
