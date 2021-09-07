Initramfs Arguments
===

Information that expands upon the documentation for Alpine's initramfs command
line options.

# ssh_key

- installs `openssh`
- enables/starts `sshd`
- takes the _string literal_ from `ssh_key` and puts that value into `/root/.ssh/authorized_keys`

# apkovl

APK overlay file to download and apply onto the system (this is a URL). Placing the
file using the `device:fstype:path` method does not appear to work.

_These are generally considered "Alpine local backups" and managed via `lbu`
if seeking more information._

# alpine_repo

URL to use as the repository in the system

<sub><sup>Updated: 2021-09-07</sup></sub>
