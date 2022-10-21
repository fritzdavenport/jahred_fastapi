#!/usr/bin/env bash

export $(egrep -v '^#' .env | xargs)

set -euxo pipefail

ngrok config add-authtoken $(AUTHTOKEN)