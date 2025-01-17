#!/bin/bash

# Print OpenWrt build info
make info

# Set profile for armsr
PROFILE="generic"

PACKAGES=""

# Selecting default packages
    PACKAGES="$PACKAGES kmod-usb-net-rtl8150 kmod-usb-net-rtl8152 kmod-usb-net-asix kmod-usb-net-asix-ax88179"
    PACKAGES="$PACKAGES kmod-mii kmod-usb-net kmod-usb-wdm kmod-usb-net-qmi-wwan uqmi \
    kmod-usb-net-cdc-ether kmod-usb-serial-option kmod-usb-serial kmod-usb-serial-wwan qmi-utils \
    kmod-usb-serial-qualcomm kmod-usb-acm kmod-usb-net-cdc-ncm kmod-usb-net-cdc-mbim umbim \
    usbutils luci-proto-mbim luci-proto-ncm \
    kmod-usb-net-huawei-cdc-ncm kmod-usb-net-cdc-ether kmod-usb-net-rndis kmod-usb-net-sierrawireless kmod-usb-ohci kmod-usb-serial-sierrawireless \
    kmod-usb-uhci kmod-usb2 kmod-usb-ehci kmod-usb-net-ipheth usbmuxd libusbmuxd-utils libimobiledevice-utils usb-modeswitch kmod-nls-utf8 mbim-utils xmm-modem \
    kmod-phy-broadcom kmod-phylib-broadcom kmod-tg3"
    
    # Tunnel option
    PACKAGES="$PACKAGES coreutils-nohup bash dnsmasq-full curl ca-certificates ipset ip-full libcap libcap-bin ruby ruby-yaml kmod-tun kmod-inet-diag unzip kmod-nft-tproxy luci-compat luci luci-base luci-app-openclash"
    
    # NAS and Hard disk tools
    PACKAGES="$PACKAGES luci-app-diskman kmod-usb-storage kmod-usb-storage-uas ntfs-3g"
    
    # Bandwidth And Network Monitoring
    PACKAGES+=" internet-detector luci-app-internet-detector internet-detector-mod-modem-restart vnstat2 vnstati2 luci-app-vnstat2"
    
    # Speedtest
    PACKAGES="$PACKAGES iperf3"
    
    # Material Theme
    PACKAGES="$PACKAGES luci-theme-material"
    
    # PHP8
    PACKAGES="$PACKAGES libc php8 php8-fastcgi php8-fpm coreutils-stat zoneinfo-asia php8-cgi \
    php8-cli php8-mod-bcmath php8-mod-calendar php8-mod-ctype php8-mod-curl php8-mod-dom php8-mod-exif \
    php8-mod-fileinfo php8-mod-filter php8-mod-gd php8-mod-iconv php8-mod-intl php8-mod-mbstring php8-mod-mysqli \
    php8-mod-mysqlnd php8-mod-opcache php8-mod-pdo php8-mod-pdo-mysql php8-mod-phar php8-mod-session \
    php8-mod-xml php8-mod-xmlreader php8-mod-xmlwriter php8-mod-zip libopenssl-legacy"
      
    # misc
    PACKAGES="$PACKAGES zram-swap adb parted losetup resize2fs luci luci-ssl block-mount luci-app-ramfree htop bash curl wget wget-ssl tar unzip unrar gzip jq luci-app-ttyd nano httping screen openssh-sftp-server"
    
    PACKAGES="$PACKAGES -procd-ujail -libgd -dnsmasq"
    
    PACKAGES="$PACKAGES luci-app-temp-status"
    
    # amlogic
    PACKAGES="$PACKAGES luci-app-amlogic ath9k-htc-firmware btrfs-progs hostapd hostapd-utils kmod-ath kmod-ath9k kmod-ath9k-common kmod-ath9k-htc kmod-cfg80211 kmod-crypto-acompress kmod-crypto-crc32c kmod-crypto-hash kmod-fs-btrfs kmod-mac80211 wireless-tools wpa-cli wpa-supplicant"
    
# Files directory for custom configurations or files
FILES="files"

# Generate the image with specified profile and packages
make image PROFILE="$PROFILE" PACKAGES="$PACKAGES" FILES="$FILES"
