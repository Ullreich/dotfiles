import subprocess

is_paused = subprocess.check_output(["dunstctl", "is-paused"]).decode()
print(is_paused)

if (is_paused=="false\n"):
    print(" 󰂚 ", flush=True)
else:
    print(" 󰂛 ", flush=True)
