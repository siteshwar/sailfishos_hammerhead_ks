# -*-mic2-options-*- -f fs --compress-disk-image=tar.bz2 --copy-kernel --record-pkgs=name --pkgmgr=zypp --arch=armv7hl -*-mic2-options-*-
# 
# Do not Edit! Generated by:
# kickstarter.py
# 
lang en_US.UTF-8
keyboard us
timezone --utc UTC
part / --size 3500 --ondisk sda --fstype=ext3

rootpw nemo

user --name nemo --groups audio,video,privileged --password nemo


#repo --name=mer-core --baseurl=http://releases.merproject.org/releases/latest/builds/armv7hl/packages  --debuginfo
#repo --name=nemo-ux --baseurl=http://repo.merproject.org/obs/nemo:/devel:/ux/latest_armv7hl/ 
#repo --name=nemo-apps --baseurl=http://repo.merproject.org/obs/nemo:/devel:/apps/latest_armv7hl/ 
#repo --name=nemo-mw --baseurl=http://repo.merproject.org/obs/nemo:/devel:/mw/latest_armv7hl/ 
#repo --name=mer-qt --baseurl=http://repo.merproject.org/obs/mer:/qt:/devel/latest_armv7hl/

#repo --name=nemo-adaptation-n950-n9 --baseurl=http://repo.merproject.org/obs/nemo:/devel:/hw:/ti:/omap3:/n950-n9/latest_armv7hl/ 
#repo --name=nemo-adaptation-n9xx-common --baseurl=http://repo.merproject.org/obs/nemo:/devel:/hw:/ti:/omap3:/n9xx-common/latest_armv7hl/ 

repo --name=jolla --baseurl=http://releases.jolla.com/releases/1.0.5.16/jolla/armv7hl/
repo --name=hotfixes --baseurl=http://releases.jolla.com/releases/1.0.5.16/hotfixes/armv7hl/
repo --name=apps --baseurl=http://releases.jolla.com/jolla-apps/1.0.5.16/armv7hl/
repo --name=tools --baseurl=http://repo.merproject.org/obs/mer-tools:/devel/latest_armv7hl/

repo --name=hw-hammerhead --baseurl=http://repo.merproject.org/obs/home:/siteshwar:/hw:/hammerhead/sailfish_1.0.5.16_armv7hl/
repo --name=hw-common --baseurl=http://repo.merproject.org/obs/home:/siteshwar:/hw:/common/sailfish_1.0.5.16_armv7hl/ 

#repo --name=limited-nemo-mw --baseurl=http://repo.merproject.org/obs/home:/vgrade:/branches:/nemo:/devel:/mw/latest_armv7hl/
#repo --name=jalnmwr --baseurl=http://repo.merproject.org/obs/home:/SourenAraya:/branches:/nemo:/devel:/mw/latest_armv7hl
#repo --name=bme-patched-service-unit --baseurl=http://repo.merproject.org/obs/home:/SourenAraya:/branches:/nemo:/devel:/hw:/ti:/omap3:/n950-n9/latest_armv7hl/ --includepkgs=bme-rm-680-bin
#repo --name=mer --baseurl=http://repo.merproject.org/obs/home:/vgrade:/branches:/mer-core:/devel/latest_armv7hl/

%packages

#@jolla-mw
#qt5-qtmultimedia-plugin-resourcepolicy-resourceqt
#alsa-plugins-pulseaudio
#statefs-provider-connman
#droid-sans-fonts
#xdg-utils
#droid-sans-mono-fonts
#droid-serif-fonts
#buteo-mtp-qt5-sync-plugin
#jolla-keyboard
#bluez-configs-sailfish
#ohm
#statefs-provider-keyboard-generic
#jolla-firstsession
#statefs-provider-mce
#qt5-plugin-bearer-connman
#statefs-provider-ofono
#statefs-provider-profile
#qt5-qtsensors-plugin-sensorfw
#connman-configs-sailfish
#-statefs-provider-upower
#buteo-sync-plugins-qt5
#mapplauncherd-privileges-jolla
#jolla-preload-pictures
#statefs-provider-bluez


#@jolla-core
#fontpackages-filesystem
#lsb-release
#wireless-tools
#kbd
#wpa_supplicant
#systemd-sysv
#iproute
#setup
#ssu
#ofono
#xdg-user-dirs
#e2fsprogs
#pam
#shadow-utils
#passwd
#shared-mime-info
#mer-release
#prelink
#iputils
#procps
#ssu-vendor-data-jolla
#connman
#readline
#rootfiles
#rpm
#coreutils
#basesystem
#bash
#jolla-ca
#crda
#busybox-symlinks-gzip
busybox
busybox-static
#bluez
#boardname
#net-tools
#jolla-common-configurations
#nss
#deltarpm
#usbutils
#file
#time
#util-linux
#filesystem



#=================================================
#@jolla-configuration-n9

@jolla-ui-wayland
#jolla-sessions-qt5
#lipstick-jolla-home-qt5
#jolla-actdead-charging

@jolla-sailfish-applications
#all-translations-pack
#jolla-handwriting
#transferengine-plugins
#jolla-vault
#jolla-settings-bluetooth
#jolla-settings-sync
#jolla-contacts
#jolla-startupwizard
#jolla-settings-accounts
##jolla-camera
#jolla-settings-accounts-extensions
#jolla-settings-layout
#jolla-settings-networking
#sailfish-browser
#jolla-settings-transferui-qt5
#jolla-gallery
#voicecall-ui-jolla
#jolla-messages
#jolla-vault-units
#-jolla-xt9
#-jolla-xt9-cp
#store-client
#jolla-settings-system
#jolla-hacks


@jolla-store-applications
#jolla-calendar
##yandex-store
#jolla-mediaplayer
#jolla-clock
#jolla-notes
#jolla-email
#jolla-calculator
#sailfish-office

#@jolla-hw-adaptation-hammerhead
droid-hal-hammerhead
droid-hal-hammerhead-kernel-modules
droid-hal-hammerhead-devel
droid-hal-hammerhead-policy-settings
#droid-hal-hammerhead-img-boot
droid-hal-hammerhead-pulseaudio-settings
droid-hal-hammerhead-kernel
droid-hal-hammerhead-sailfish-config
#droid-hal-hammerhead-img-recovery
#droid-hal-hammerhead-img-boot

pulseaudio-modules-droid
libhybris-*
ngfd-plugin-droid-vibrator
#usb-moded*

#@jolla-hw-adaptation-n9
        #===========================================================
        #@nokia-n950-support-wayland
        #bme-rm-680-bin
        #statefs-provider-bme
        #dsme
        #gstreamer0.10-nokia-videosrc
        #gst-omapfb
        #kernel-adaptation-n950
        #n950-camera-fw
        #nokia-n950-configs
        #nemo-configs-n950-n9
        #omap-update-display
        #pulseaudio-settings-n950
        #systemd-console-ttyS0
        #ti-omap3-sgx-libEGL
        #ti-omap3-sgx-libGLESv1
        #ti-omap3-sgx-libGLESv2
        #ti-omap3-sgx-wayland-wsegl
        #ti-wl1271-firmware
        #ti-wl1273-bt-firmware
        #ti-wl1273-fm-radio-firmware
        #udev-rules-n950
        #wl1271-cal-bin
        #policy-settings-basic-n950

        #usb-moded-config-n950-n9
        #===========================================================
qt5-plugin-generic-evdev
qt5-plugin-platform-eglfs
qt5-qpa-hwcomposer-plugin
strace
#nemo-configs-n950-n9-wayland
qt5-qtwayland-wayland_egl
#=================================================

jolla-common-configurations
libsailfishkeyprovider-data-jolla

#pulseaudio-policy-enforcement
#usb-moded-settings-sailfish
jolla-developer-mode




#=== MULTIMEDIA =================================
gst-av
#alsa-utils
#================================================

#===== tools ===========================
nano
zypper
#==== END tools ==============================



%end

%pre
touch $INSTALL_ROOT/.bootstrap
%end

%post
rm $INSTALL_ROOT/.bootstrap

## fix permissions
chown -R 100000:100000 /home/nemo

# developer mode password workaround 
sed -i 's/system/privileged/' /etc/dbus-1/system.d/org.nemo.passwordmanager.conf

## rpm-rebuilddb.post from mer-kickstarter-configs package
# Rebuild db using target's rpm
echo -n "Rebuilding db using target rpm.."
rm -f /var/lib/rpm/__db*
rpm --rebuilddb
echo "done"
## end rpm-rebuilddb.post

#if [ "@SSU_RELEASE_TYPE@" = "rnd" ]; then
#   [ -n "@NEMO_RELEASE@" ] && ssu release -r @NEMO_RELEASE@
#    [ -n "@FLAVOUR@" ] && ssu flavour @FLAVOUR@
#    ssu mode 2
#else
#    [ -n "@NEMO_RELEASE@" ] && ssu release @NEMO_RELEASE@
#    ssu mode 4
#fi

## arch-armv7hl.post from mer-kickstarter-configs package
# Without this line the rpm don't get the architecture right.
echo -n 'armv7hl-meego-linux' > /etc/rpm/platform

# Also libzypp has problems in autodetecting the architecture so we force tha as well.
# https://bugs.meego.com/show_bug.cgi?id=11484
echo 'arch = armv7hl' >> /etc/zypp/zypp.conf
## end arch-armv7hl.post

# Remove service to mount debugfs installed by systemd (it causes liptick to crash)
rm -f /lib/systemd/system/sys-kernel-debug.mount
rm -f /lib/systemd/system/sysinit.target.wants/sys-kernel-debug.mount

%end

%post --nochroot
if [ -n "$IMG_NAME" ]; then
    echo "BUILD: $IMG_NAME" >> $INSTALL_ROOT/etc/meego-release
fi

%end
