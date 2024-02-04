#!/usr/bin/python

import subprocess

icons = ["󰖁","󰕾"]

volume_status = subprocess.run("amixer sget Master | awk -F '[^0-9]+' '/Left:/{print $3}'",
                                shell = True,
                                capture_output=True).stdout.decode("utf-8")

if int(volume_status) == 0:
    print(icons[0])
else:
    print(icons[1])
