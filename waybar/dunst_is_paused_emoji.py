import subprocess

is_paused = subprocess.check_output(["dunstctl", "is-paused"]).decode()

if (is_paused=="false\n"):
    print(" 󰂚 ", flush=True)
else:
    print(" 󰂛 ", flush=True)
