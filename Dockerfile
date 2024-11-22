FROM ghcr.io/vially/archlinuxarm:main

# Download pre-built AUR packages from: https://github.com/vially/PKGBUILDs/releases
ADD https://github.com/vially/PKGBUILDs/releases/download/uboot-cm3588-nas-2024.10-1/uboot-cm3588-nas-2024.10-1-aarch64.pkg.tar.xz /tmp/

RUN pacman -U --noconfirm /tmp/*.pkg.tar.xz && \
    rm /tmp/*.pkg.tar.xz
