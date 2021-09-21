Cloud Init
===

Notes about using cloud-init to bootstrap a small system (mostly virtualized in
the following use cases)

# networking

It can be easier to set a static IP via kernel parameters (e.g. `ip=` then it
is to find the documentation for cloud-init networking)

# vmlinuz/initramfs

These can be pulled out of most ISOs though the ISO needs to have been built
with the `virtio` module if it is going to be used for virtualization (e.g.
passing a kernel/initram to a process to start as a VM)

# disks

It is easier to use a "cloud ready" image that is a disk image that can be
booted directly (and not booting an installation media/iso). Then one can set
the kernel parameter `root=/dev/path2` as necessary to boot the rootfs object properly.

<sub><sup>Updated: 2021-09-21</sup></sub>
