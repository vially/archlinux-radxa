### ArchLinuxARM image builder

#### Building the `archlinuxarm` image

```sh
podman build --arch=arm64 -t archlinuxarm -f ./archlinuxarm.Dockerfile
```

#### Building the `archlinuxarm-tarball` image

```sh
podman build --arch=arm64 -t archlinuxarm-tarball -f ./tarball.Dockerfile
```
