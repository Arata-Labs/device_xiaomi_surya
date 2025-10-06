#!/bin/bash

COMB="vendor/xiaomi/camera/combine.sh"

if [ -f "$COMB" ]; then
    echo -e "- Executing ${COMB}"
    bash $COMB
fi