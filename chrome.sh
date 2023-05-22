#!/bin/bash

if [ "$1" == "warp" ]; then
    google-chrome \
        --origin-to-force-quic-on=localhost:4443 \
        https://localhost:4444
elif [ "$1" == "rush" ]; then
    google-chrome \
        --origin-to-force-quic-on=localhost:4443 \
        http://localhost:8080/src-encoder/ \
        http://localhost:8080/src-player/
elif [ "$1" == "quicr" ]; then
    echo "TODO QUICR..."
    # google-chrome \
    #     --origin-to-force-quic-on=localhost:4443 \
    #     https://localhost:8080
else 
    echo "provide either \"warp\", \"rush\" or \"quicr\" as first parameter!"
fi
