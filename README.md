# Evaluation of HTTP/3 for Media Streaming -- Project Advanced Web Technologies at TU Berlin SoSe23

- [Evaluation of HTTP/3 for Media Streaming -- Project Advanced Web Technologies at TU Berlin SoSe23](#evaluation-of-http3-for-media-streaming----project-advanced-web-technologies-at-tu-berlin-sose23)
- [Prerequisites](#prerequisites)
- [Getting started](#getting-started)
- [Facebook / RUSH](#facebook--rush)
  - [How to install](#how-to-install)
  - [Relevant links](#relevant-links)
- [Twitch / WARP](#twitch--warp)
  - [How to install](#how-to-install-1)
    - [Go](#go)
    - [Rust](#rust)
  - [Relevant links](#relevant-links-1)
- [Cisco / QUICR](#cisco--quicr)
  - [How to install](#how-to-install-2)
  - [Relevant links](#relevant-links-2)

# Prerequisites
  - [Node.js](https://nodejs.org/en/download)
  - [go](https://go.dev/doc/install)
  - [python](https://www.python.org/downloads/)
  - [docker](https://docs.docker.com/get-docker/)
  - Chromium-based browser (ideally Google Chrome)
  - macOS (only for [QUICR](#cisco--quicr))

The following install instructions for [WARP](#twitch--warp) and [RUSH](#facebook--rush) and demos have only been verified to be working on Ubuntu 22.04.2 LTS, your milage may vary.

# Getting started
  1. clone this repository using ``git clone https://github.com/ArckyPN/tu-berlin-awt-pj-ss-23-http3.git``
  2. ``cd tu-berlin-awt-pj-ss-23-http3/``
  3. follow the install guides for the respective demos, [WARP](#how-to-install), RUSH, QUICR

# Facebook / RUSH
Reliable - unreliable - Streaming Protocol (RUSH) is a MOQ protocol proposition designed for realtime and ultra low-latency live streaming applications by Facebook. It uses a modified version of the proprietary ``webtransport-go`` [package](https://github.com/adriancable/webtransport-go) from Adrian Cable as the relay HTTP/3 server and provides a streamer and viewer client implementation as HTML websites.

## How to install
  1. ``cd rush/server/scripts/``
  2. ``./create-server-certs.sh`` (bash script)
  3. ``cd ../src/``
  4. ``go run main.go`` 
  5. the server should be running now and confirm it by saying: 
    ``Launching WebTransport server at: :4443``
  6. open a new terminal in the project root
  7. ``python rush/client/start-http-server-cross-origin-isolated.py``
  8. in the root: ``./chrome.sh rush`` (bash script)
    ``this launches chrome with both relevant pages open (make sure to closing all previous running chrome instances before running this)``
  9. click start on the encoder website and copy the StreamID
  10. paste the StreamID on the Player website and click start

If you are having any issues to refer to the original repositories, found [below](#relevant-links).

## Relevant links
  - [Demo Video (4min)](https://www.youtube.com/watch?v=adckQdZHECQ)
  - [Encoder & Player code](https://github.com/facebookexperimental/webcodecs-capture-play)
  - [Server / Relay code](https://github.com/facebookexperimental/go-media-webtransport-server)

# Twitch / WARP
WARP is a MOQ protocol proposition designed for realtime and low-latency live streaming applications by Twitch. It uses a modified version of the official ``webtransport-go`` [package](https://github.com/kixelated/webtransport-go) from ``quic-go`` by Luke Curley and provides a viewer client implementation as HTML website.

## How to install

### Go
  1. ``cd warp-go/cert/``
  2. ``./generate`` (bash script), generates the TLS certificate
  3. ``cd ../media/`` 
  4. place a video file of your choice in this directory, called ``source.mp4``
  5. ``./generate`` (bash script), generates dash segments
  6. ``cd ../server/``
  7. ``go run main.go``
  8. the server should be running now and confirm it by saying:
    ``listening on :4443``
  9. open a new terminal in the root of this project
  10. ``cd warp-go/player/``
  11. ``npm run install``
  12. ``npm run serve``
  13. in the root: ``./chrome.sh warp`` (bash script)
    ``this launches chrome with the relevant page open (make sure to closing all previous running chrome instances before running this)``
  14. you are now able to stream your video using warp

Since this repository no longer exists in its original state, please refer to the [README.md](./warp-go/README.md) found in this repository.

### Rust
  1. ``cd warp-rust``
  2. ``sudo docker-compose up --build``
  3. in the root: ``./chrome.sh warp`` (bash script)
    ``this launches chrome with the relevant page open (make sure to closing all previous running chrome instances before running this)``
  4. you are now able to stream your video using warp

Since this repository no longer exists in its original state, please refer to the [README.md](./warp-rust/README.md) found in this repository.
When I ran this, the WebTransport connection would frequently drop out and was never able to be stable for more than 10s.
    
## Relevant links
  - [GitHub](https://github.com/kixelated/warp-demo)

# Cisco / QUICR
QUICR by Cisco has been designed to be a general purpose transport protocol for wide range of applications on various latency levels, mainly for real-time applications, like video conferencing, interactive live streaming and multiplayer video games. It uses [libquicr](https://github.com/Quicr/libquicr) C++ API based on the [quicrq](https://github.com/Quicr/quicrq) library and runs in a dedicated Swift macOS client program.

## How to install
The install instructions are quite extensive and to preventing making errors regurgitating those, please refer to the original [repository](https://github.com/Quicr/qmedia) for install instructions.

Please note, I was personally unable to get this to run on the provided MacBook.

## Relevant links
  - [GitHub](https://github.com/Quicr/qmedia)