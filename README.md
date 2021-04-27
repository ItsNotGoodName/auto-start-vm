# auto-start-vm
Starts KVM/QEMU virtual machine when no displays are connected to host.
Requires systemd and virsh.

## Install
```
make install
```

## Configure
```
systemctl enable auto-start-vm@<VM-NAME>
```

## Uninstall
```
make uninstall
```
