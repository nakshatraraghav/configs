#!/usr/bin/env bash

script="/home/combatrickshaw/.config/kitty/asciiart/skullz.sh"

if [ -f "$script" ]; then
  "$script"
else
  echo "pacman-ghost ascii art missing"
fi