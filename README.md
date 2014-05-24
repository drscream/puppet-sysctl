# The puppet-sysctl module

Simple use of sysctl directives in Debian or Ubuntu. This module is created to
be simple and minimal without extra libs.

## Example

#### hiera: common.yaml

```yaml
---
sysctl::directives:
    net.ipv4.conf.lo.arp_ignore:
        value: 1
    net.ipv4.conf.lo.arp_announce:
        value: 2
    net.ipv4.conf.all.arp_announce:
        value: 2
    net.ipv4.conf.all.arp_ignore:
        value: 1
    net.ipv4.conf.all.rp_filter:
        value: 0
```

#### puppet: site.pp

```puppet
node 'example' {
    include sysctl
}
```
