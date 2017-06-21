#!/bin/bash
synclient FingerHigh=80 FingerLow=50
synclient PalmDetect=1
synclient PalmMinWidth=8
synclient PalmMinZ=20
synclient TapAndDragGesture=0
synclient MaxTapMove=10
synclient MaxTapTime=180

syndaemon -i 0.8 -t -K -R -d


