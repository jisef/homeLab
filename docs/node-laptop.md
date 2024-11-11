# Laptop

Laptop specific configurations

## Dont shut down when laptop is closed

```
vim /etc/systemd/logind.conf
```

Uncomment `HandleLidSwitch=ignore` and `HandleLidSwitchDocked=ignore `make sure its value is `ignore`
Activate the configuration with:

```
sudo systemctl restart systemd-logind
```
