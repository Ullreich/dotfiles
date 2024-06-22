import subprocess
hidden = False

try:
    f = open("/var/tmp/waybar_toggle", "r")
    hidden = f.readline()
    f.close()
except FileNotFoundError:
    pass

f = open("/var/tmp/waybar_toggle", "w")
if (hidden=="True"):
    subprocess.run(["swaymsg", "bar", "mode", "dock", "bar-0"])
    f.write("False")
else:
    subprocess.run(["swaymsg", "bar", "mode", "invisible", "bar-0"])
    f.write("True")

f.close()
