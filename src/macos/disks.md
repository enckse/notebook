Disk Management
===

# iso

## cloud ready

To create a cloud-init ready iso on macOS, place "user-data" and "meta-data" in a `configs/` directory (or any name)

```
hdiutil makehybrid -o init.iso -joliet -iso -default-volume-name cidata configs/
```

(make sure to specify `-joliet -iso` because otherwise macOS will try to use `-hfs` which many systems will not have installed/ready)

<sub><sup>Updated: 2021-09-21</sup></sub>
