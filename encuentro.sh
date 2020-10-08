COMMAND=$1

send_key() {
  app=$1
  key=$2
  xdotool search "$app" windowactivate --sync key --clearmodifiers $key
}

toggle_mic() {
  send_key "Meet -" "ctrl+d"
  send_key "Zoom Meeting" "alt+a"
}

toggle_video() {
  send_key "Meet -" "ctrl+e"
  send_key "Zoom Meeting" "alt+v"
}

case $COMMAND in
  mic)
    toggle_mic
    ;;
  video)
    toggle_video
    ;;
  *)
    echo "El comando no existe :("
    exit 1
    ;;
esac
