p() {
  case "$1" in
    play|resume)
      playerctl play
      ;;
    pause)
      playerctl pause
      ;;
    toggle|pp)
      playerctl play-pause
      ;;
    next|n)
      playerctl next
      ;;
    back|prev|previous|b)
      playerctl previous
      ;;
    stop)
      playerctl stop
      ;;
    status|s)
      playerctl status
      ;;
    info|meta|now)
      playerctl metadata
      ;;
    *)
      echo "Usage: p {play|pause|toggle|next|back|stop|status|info}"
      return 1
      ;;
  esac
}
