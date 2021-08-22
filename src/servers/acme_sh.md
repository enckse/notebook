acme.sh
===

`acme.sh` can be used as a replacement to something like `certbot`. One should
install `acme.sh` via distribution repository when possible.

## data

By default the `acme.sh` will store/manage data in the user's home folder
under `.acme.sh` (e.g. `/home/myuser/.acme.sh`) but this data should only ever
be touched by `acme.sh` and not used/touched by the user.

## account

To associate an email with the account for `acme.sh` operations
```
acme.sh --update-account --email <your email address>
```

## issue/renew

To issue (`--issue`) or renew (`--renew`) utilizing multiple domains and via
a webroot.

```
acme.sh --issue -d my.example.com -d my.other.example.com -w /path/to/webroot
```

## deploy

One can then actually get the useful certificate files for something like `nginx`
via:

```
acme.sh --install-cert -d my.example.com -d my.other.example.com \
    --key-file /some/path/to/my.example.com/or/other/key.pem \
    --cert-file /some/path/to/my.example.com/or/other/cert.pem \
    --fullchain-file /some/path/to/my.example.com/or/other/fullchain.pem
```

Which map to `nginx` directives:

| acme.sh CLI | nginx config |
| --- | --- |
| `--key-file` | `ssl_certificate_key` |
| `--cert-file` | `ssl_trusted_certificate` |
| `--fullchain-file` | `ssl_certificate` |

<sub><sup>Updated: 2021-08-22</sup></sub>
