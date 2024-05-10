(use-package pulseaudio-control
  :init
  (setq pulseaudio-control-volume-verbose nil)
  (pulseaudio-control-default-sink-mode))
