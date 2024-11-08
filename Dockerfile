FROM ghcr.io/vially/archlinuxarm:main

# Download pre-built AUR package from: https://github.com/vially/PKGBUILDs/releases
ADD https://github.com/vially/PKGBUILDs/releases/download/uboot-radxa-zero-3-2024.10-1/uboot-radxa-zero-3-2024.10-1-aarch64.pkg.tar.xz /tmp/

RUN pacman -U --noconfirm /tmp/uboot-radxa-zero-3-*.pkg.tar.xz && \
    rm /tmp/uboot-radxa-zero-3-*.pkg.tar.xz
