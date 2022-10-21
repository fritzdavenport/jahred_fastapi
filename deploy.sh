#!/usr/bin/env bash

export $(egrep -v '^#' .env | xargs)

set -euxo pipefail

scp -i $(KEYFILE) -r . ubuntu@$(DEPLOYMENT):/home/ubuntu/jahred_fastapi