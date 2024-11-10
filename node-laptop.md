# Laptop
Laptop specific configurations
## Dont shut down when laptop is closed
```
vim /etc/systemd/logind.conf
```
Uncomment `HandleLidSwitch=ignore` and make sure its value is `ignore`
