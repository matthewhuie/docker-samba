# docker-samba
This is a Docker container that provides a lightweight and generic Samba instance, based on Alpine Linux. It provides the latest version of Samba, running on the latest version of Alpine Linux. This repository currently builds for multi-arch: ARMv7, ARM64, and AMD64.

![buildx](https://github.com/matthewhuie/docker-samba/workflows/docker-buildx/badge.svg?branch=master)

## Getting Started
Pull the image from Docker Hub.
```bash
docker pull matthewhuie/samba
```

Create and start a container. For example, use default smb.conf, publish 445/TCP only, and run detached.
```bash
docker run -d -p 445:445/tcp matthewhuie/samba
```

Keep in mind, this is a barebones instance of Samba, allowing more flexibility on how the image can be used. 

For example, use existing Samba installation and secrets on the host to provision the Samba instance in the container by providing volume mounts.
```bash
docker run -d -p 445:445/tcp \
  -v /etc/samba:/etc/samba:ro \
  -v /etc/passwd:/etc/passwd:ro \
  -v /etc/secret:/etc/secret:ro \
  -v /var/lib/samba:/var/lib/samba \
  -v /mnt/SHARE_PATH_HERE:/mnt/SHARE_PATH_HERE \
  matthewhuie/samba
```

For discovery, a sample Avahi service file is available in this repo.

## Links
- https://github.com/matthewhuie/docker-samba
- https://hub.docker.com/r/matthewhuie/samba
- https://www.samba.org/
