#!/bin/bash

COMB="vendor/xiaomi/camera/combine.sh"

if [ -f "$COMB" ]; then
    echo -e "- Executing ${COMB}"
    bash $COMB
fi

if [ -d kernel/xiaomi/surya ]; then
    if [ -d kernel/xiaomi/surya/KernelSU-Next ]; then
        if [ ! -d kernel/xiaomi/surya/KernelSU-Next/kernel ]; then
            cd kernel/xiaomi/surya
            git submodule init
            git submodule update --recursive
            rm -rf KernelSU-Next/userspace
            cd ../../..
        fi
    fi
fi