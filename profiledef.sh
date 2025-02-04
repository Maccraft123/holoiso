#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="HoloFork"
iso_label="HoloFork_$(date +%Y%m)"
iso_publisher="Maya <https://github.com/Maccraft123>"
iso_application="HoloFork Installer"
iso_version="$(date +%Y%m%d_%H%M)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  ["/usr/local/bin/holoinstall"]="0:0:755"
  ["/etc/skel/Desktop/ime-kb.desktop"]="0:0:755"  
  ["/etc/xdg/autostart/folder-struct.desktop"]="0:0:755"
)
