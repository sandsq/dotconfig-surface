#!/usr/bin/env bash

handle() {
  case $1 in
    workspacev2*) hyprctl activeworkspace -j | jq .id;;
    # activewindow*) $1 ;;
  esac
}

socat -U - UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock | while read -r line; do handle "$line"; done
