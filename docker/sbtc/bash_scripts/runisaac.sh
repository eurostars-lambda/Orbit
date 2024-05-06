#!/bin/bash

# Default port number
PORT=8211

# Process command-line options
while [[ "$#" -gt 0 ]]; do
    case $1 in
        -p|--port)
            PORT="$2"
            echo "Starting Isaac sim on custom port $PORT," \
            "if the port is available. If the port $PORT does not work, " \
            "check the terminal messages to find the real port number."
            shift
            ;;
        *)
            echo "Unknown parameter passed: $1"
            exit 1
            ;;
    esac
    shift
done


cd /isaac-sim
./runheadless.webrtc.sh \
    --/app/window/dpiScaleOverride=1.0 \
    --/app/livestream/allowResize=true \
    --/app/window/scaleToMonitor=false \
    --/exts/omni.services.transport.server.http/port=$PORT \
    #--/persistent/app/window/width=2560 \
    #--/persistent/app/window/height=1440

    # 3840 - 2160
    # 2560 - 1440
    # 1920 - 1080

    # we need to run this through isaac-sim python for full functionality.
