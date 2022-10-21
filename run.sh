#!/usr/bin/env bash

set -euxo pipefail

python main.py &
ngrok http 80