#!/bin/bash

cd /isaac-sim
./runheadless.webrtc.sh \
    --/app/window/dpiScaleOverride=1.0 \
    --/app/livestream/allowResize=true \
    --/app/window/scaleToMonitor=false \
    #--/persistent/app/window/width=2560 \
    #--/persistent/app/window/height=1440

    # 3840 - 2160
    # 2560 - 1440
    # 1920 - 1080

    # we need to run this through isaac-sim python for full functionality.
