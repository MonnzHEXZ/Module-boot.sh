#!/boot

echo "   Warning ; This boot can run perfectly and imperfectly! "
sleep 0.2
echo "   starting "
sleep 0.4

CMD="$1"

case "$CMD" in
  -Reboot)
    reboot
    ;;
  -PowerOff)
    reboot -p
    ;;
  -Recovery)
    reboot recovery
    ;;
  -Bootloader)
    reboot bootloader
    ;;
  *)
    echo "   Please Select One : $0 [ -Reboot | -PowerOff | -Recovery | -Bootloader ]"
    ;;
esac
