#!/usr/bin/python

import subprocess
import time

while True:
    status= subprocess.run("playerctl metadata --format '{{ artist }} - {{ title }}' || true",
                            shell=True,
                            capture_output=True).stdout.decode("utf-8")

    status= status.split("\n")[0]
    

    if status == "":
        subprocess.run("echo 'Select song'",shell=True)
    else:
        status = status.split("-")
        status = f"{status[0]} - {status[1]}"

        if len(status) >= 32:
            status = status[0:len(status)-(len(status) - 31)]
            status = f"{status}.."
    
        subprocess.run(f"echo '{status}'",shell=True)
    
    time.sleep(0.2)
