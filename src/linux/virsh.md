virsh
===

Notes about using `virsh` and related commands

Simple installation (using a vnc "display")
```
virt-install -n myvm \
    --memory 16384 \
    --cpu host \
    --cdrom /path/to/rhel8.4.iso \
    --disk size=50 \
    --graphics vnc,port=5901,listen=0.0.0.0,password=myvncpass \
    --network default \
    --vcpus 2 \
    --os-variant rhel8.4
```

or rebuild from a disk image with _all the same_ except change (e.g. if the
qemu xml definition accidentally gets deleted):
```
virt-install -n myvm \
    ... \
    # size=50 becomes...
    --disk /path/to/existing/disk.qcow2 \
    ... \
    # remove --cdrom /path/to/rhel8.4.iso
    --import \
    ...
```

once configuration/install is done then `console=ttyS0,115200` can be
added to the kernel parameters and one can attach to the machine console
via `virsh console myvm`

## macOS

`open` on macOS understands `vnc://` (e.g. `open vnc://myserver:5900`)

<sub><sup>Updated: 2021-09-02</sup></sub>