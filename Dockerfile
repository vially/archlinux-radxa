FROM ghcr.io/vially/archlinuxarm:main

# Download pre-built AUR packages from: https://github.com/vially/PKGBUILDs/releases
ADD https://github.com/vially/PKGBUILDs/releases/download/uboot-radxa-zero-3-2024.10-1/uboot-radxa-zero-3-2024.10-1-aarch64.pkg.tar.xz /tmp/
ADD https://github.com/vially/PKGBUILDs/releases/download/aic8800-radxa-3.0%2Bgit20240327.3561b08f_2-1/aic8800-radxa-firmware-3.0+git20240327.3561b08f_2-1-any.pkg.tar.xz /tmp/
ADD https://github.com/vially/PKGBUILDs/releases/download/aic8800-radxa-3.0%2Bgit20240327.3561b08f_2-1/aic8800-radxa-sdio-dkms-3.0+git20240327.3561b08f_2-1-any.pkg.tar.xz /tmp/

RUN pacman -S --noconfirm wireless-regdb dkms linux-aarch64-headers && \
    pacman -U --noconfirm /tmp/*.pkg.tar.xz && \
    rm /tmp/*.pkg.tar.xz
