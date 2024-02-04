#!/usr/bin/python

import subprocess

eww_status = subprocess.run("eww active-windows | grep 'clipboard_manager'",
                            shell=True,
                            capture_output=True).stdout.decode("utf-8")

#Checks if window is opened
if eww_status == "":
    subprocess.run("eww open clipboard_manager",shell=True)
else:
    subprocess.run("eww close clipboard_manager",shell=True)
