#!/bin/sh

amixer -D pipewire sget Master | awk -F '[^0-9]+' '/Left:/{print $3}'
