# buildroot-2017.11

buildroot 2017.11 port of GCW0 opendingux buildroot 2014.05 for RS-97 (JZ4760)

## [Unreleased]

## Changelog
## 2018.01.15
### Added
- LIBOPK, SSTRIP, O2XIV, ALLEGRO, LOVE2D, TIMIDITY_INSTRUMENTS, UNLOCKVT, LOWPOWD, FLUIDSYNTH, LIBMIKMOD,  LIBUNGIF, LIBMTPSERVER, PYCLOCK, OD_NETWORK_CONFIG, BAR, GCW_CONNECT
- post build script
- busybox config
- uclibc config

## 2018.01.13
### Added 
- file skeleton from gcw0 buildroot

### Changed
- fixed dependencies in file skeleton (/var/tmp, etc/shawdow)
- gmenu2x support for RS97(320x480)

## 2018.01.12
### Added
- Dingux Commander, IPKG, Gmenu2x, libxdgmime, pwswd

### Changed
- config menu under packages>opendingux to reflect opendingux additions to buildroot
- removed warning about ipkg in legacy config options
        
## 2018.01.11
### Added
- Initial commit

## Todo
- add support for rs97 in pwswd (hotkey configs)
- fix bennugd, SSTRIP, TIMIDITY_INSTRUMENTS, BAR, LOVE2D, LIBMTPSERVER
- fix ETNA_VIV, ETNA_VIV_ABIV4, MESA3D_ETNA_VIV,(if needed)
- remove connectivity options as default (only need ip over usb)

- (research and/or add) the following packages
OPENAL_SOFT, APITRACE, BOOST_STATIC, PYTHON_PYEXPAT, ALSA_VOLUME, ALSA_UTILS_AMIXER, ALSA_UTILS_APLAYMIDI

- research the following options that did not 1:1 translate 
BR2_PACKAGE_UTIL_LINUX_BINARIES=y
BR2_PACKAGE_LINUX_CONSOLE_TOOLS=y
BR2_PACKAGE_LINUX_CONSOLE_TOOLS_JOY=y
BR2_PACKAGE_LINUX_CONSOLE_TOOLS_FF=y

## Instructions

sudo apt-get install sed make binutils build-essential gcc g++ bash patch gzip bzip2 perl tar cpio python unzip rsync file bc wget

git clone git://github.com/SNESFAN/buildroot-2017.git

cd buildroot-2017

make rs97_defconfig

make
