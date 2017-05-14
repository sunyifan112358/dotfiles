#!/bin/bash
synclient FingerHigh=200 FingerLow=10
synclient PalmDetect=1
synclient PalmMinWidth=1
synclient PalmMinZ=1
synclient TapAndDragGesture=0
synclient MaxTapMove=1
synclient MaxTapTime=80

syndaemon -i 0.8 -t -K -R


