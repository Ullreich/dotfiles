# with help from https://github.com/swaywm/sway/issues/5070

swaymsg "workspace 10"
swaymsg "exec flatpak run org.signal.Signal"
swaymsg "split vertical"
swaymsg "exec telegram-desktop"
swaymsg "exec flatpak run com.discordapp.Discord"
sleep 6s # sleep for 6s so that everything is correctly loaded
# correct way to find id
discord_id="$(swaymsg -t get_tree | jq '.. | objects | select(.name=="Friends - Discord") | .id')"
# hacky way to find id
signal_id=$(swaymsg -t get_tree -p | grep -Eo "#[0-9]*(: con \"Signal)( \()+[0-9]*\)+" | grep -Eo "[0-9]+" | head -1)
swaymsg "[con_id=$discord_id] move right"
swaymsg "[con_id=$signal_id] move up"
