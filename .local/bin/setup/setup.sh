#!/usr/bin/env bash

osname="macos"

case "$(uname -s)" in
Darwin*)
  osname="macos"
  ;;
Linux*)
  osname="linux"
  ;;
*)
  echo "Unknown operating system"
  exit 1
  ;;
esac

echo "Setting up $osname"

for script in $(ls -v "$HOME/.local/bin/setup/$osname/"*.sh); do
  if [ -f "$script" ]; then
    echo "Executing file $script"
    bash "$script" || {
      echo "Failed at $script"
      break
    }
  fi
done
