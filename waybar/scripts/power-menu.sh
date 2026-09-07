#!/bin/bash

choice=$(printf '%s\n' \
    "󰐥  Apagar" \
    "󰜉  Reiniciar" \
    "󰍃  Cerrar sesión" \
    "󰌾  Bloquear" \
    "󰅖  Cancelar" |
    fuzzel --dmenu --prompt="  ")

case "$choice" in
    *"Apagar")
        systemctl poweroff
        ;;
    *"Reiniciar")
        systemctl reboot
        ;;
    *"Cerrar sesión")
        hyprctl dispatch exit
        ;;
    *"Bloquear")
        hyprlock
        ;;
esac
