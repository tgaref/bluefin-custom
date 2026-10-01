#!/bin/sh
case "$1/$2" in
  post/*)
    sleep 1.0
    echo -n serio0 > /sys/bus/serio/drivers/atkbd/unbind 2>/dev/null || true
    sleep 0.5
    echo -n serio0 > /sys/bus/serio/drivers/atkbd/bind 2>/dev/null || true
    ;;
esac
