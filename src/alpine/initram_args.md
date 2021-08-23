Initramfs Arguments
===

Information that expands upon the documentation for Alpine's initramfs command
line options.

# ip

In order to get an IP one can use `=dhcp` OR define everything important
to get a network connection during init:

```
172.16.0.200:none:172.16.0.1:255.255.255.0:myhostname::none:1.1.1.1
^ ip address to request
             ^ server ip
                  ^ gateway
                             ^ netmask
                                           ^ system hostname
                                                      ^ autoconf is N/A
                                                            ^ DNS
```

# ssh_key

Setting `ssh_key` to a machine accessible URL to download into the root's
`authorized_keys` and also enable/start `openssh` (this has been extremely
inconsistent in attempted usages)

# apkovl

APK overlay file to download and apply onto the system (this is a URL)

# alpine_repo

URL to use an Alpine repository in the system
