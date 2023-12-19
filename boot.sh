#!/bin/sh

os=$(uname)

if [[ "$os" == "Darwin" ]]; then
    . ./boot.mac.sh
elif [[ "$os" == "Linux" ]]; then
    . ./boot.linux.sh
elif [[ "$os" == *"NT"* ]]; then
    echo "This is a Windows"
else
    echo "Unknown OS"
fi