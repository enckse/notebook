Kernel Parameters
===

Notes about various kernel parameters

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

<sub><sup>Updated: 2021-08-28</sup></sub>
