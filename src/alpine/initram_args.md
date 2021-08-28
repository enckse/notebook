Initramfs Arguments
===

Information that expands upon the documentation for Alpine's initramfs command
line options.

# ssh_key

Setting `ssh_key` to a machine accessible URL to download into the root's
`authorized_keys` and also enable/start `openssh` (this has been extremely
inconsistent in attempted usages)

# apkovl

APK overlay file to download and apply onto the system (this is a URL)

_These are generally considered "Alpine local backups" and managed via `lbu`
if seeking more information._

# alpine_repo

URL to use an Alpine repository in the system

<sub><sup>Updated: 2021-08-28</sup></sub>
