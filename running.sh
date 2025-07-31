#!/bin/zsh
for config in settings.*(.); do
  [[ "$config" == "settings.json" ]] && continue
  mv "$config" settings.json
  python3 main.py
  mv settings.json "$config"
  echo "\n\n$config is done\n\n"
done
