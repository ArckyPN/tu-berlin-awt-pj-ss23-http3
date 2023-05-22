#!/bin/bash

if [ "$1" == "warp" ]; then
    google-chrome \
        --origin-to-force-quic-on=localhost:4443 \
        https://localhost:4444
elif [ "$2" == "rush" ]; then
    google-chrome \
        --origin-to-force-quic-on=localhost:4443 \
        https://localhost:TODO
elif [ "$2" == "quicr" ]; then
    google-chrome \
        --origin-to-force-quic-on=localhost:4443 \
        https://localhost:TODO
else 
    echo "provide either \"warp\", \"rush\" or \"quicr\" as first parameter!"
fi
