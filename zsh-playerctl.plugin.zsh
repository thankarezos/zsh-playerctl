pct() {
  case "$1" in
    ""|p|toggle|t|pp)
      playerctl play-pause
      ;;
    play|pl)
      playerctl play
      ;;
    pause|pa)
      playerctl pause
      ;;
    next|n)
      playerctl next
      ;;
    back|b|prev|previous)
      playerctl previous
      ;;
    stop|x)
      playerctl stop
      ;;
    status|s|st)
      playerctl status
      ;;
    info|i|meta|now)
      playerctl metadata
      ;;
    *)
      echo "Usage: pct [play|pause|toggle|next|back|stop|status|info]"
      echo "Short: pct | pct p | pct t | pct n | pct b | pct s | pct i | pct x"
      return 1
      ;;
  esac
}
