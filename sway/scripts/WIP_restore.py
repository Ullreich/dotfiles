import json
import subprocess, sys

command  = ["swaymsg", "-t", "get_tree", "-p"]

a = subprocess.run(command, stdout=subprocess.PIPE);
a = a.stdout.decode()

print(a)

"""
a = json.loads(a.stdout.decode())
for output in a["nodes"]:
    if output["name"] == "__i3_scratch":
        pass
    for ws in output["nodes"]:
        if (ws["name"] == "10"):
            for apps in ws["nodes"]:
                print("shit")
                print(apps["name"])
"""
