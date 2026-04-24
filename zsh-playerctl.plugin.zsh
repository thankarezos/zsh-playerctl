p() {
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
      echo "Usage: p [play|pause|toggle|next|back|stop|status|info]"
      echo "Short: p | p p | p t | p n | p b | p s | p i | p x"
      return 1
      ;;
  esac
}
