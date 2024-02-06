#!/usr/bin/python

import subprocess
import time

while True:
    active= subprocess.run("hyprctl activewindow | awk -F '-> ' '{print substr($2, 1, length($2)-1)}'",
                            shell=True,
                            capture_output=True).stdout.decode("utf-8")

    active= active.split("\n")[0]
    
    if active == "":
        subprocess.run("echo ' Hyprland desktop'",shell=True)
    else:
        if len(active) >= 48:
            active = active[0:len(active)-(len(active) - 48)]
            active = f"{active}.."
    
        subprocess.run(f"echo '{active}'",shell=True)
    time.sleep(1)
