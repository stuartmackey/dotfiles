# need to add the following to .xinitrc

```
nitrogen --restore &
picom &
lxsession &
exec i3
```

## Arch Set

### Docker

Add user to docker group

`sudo usermod --append --groups docker stuart`

Add docker to start up on system restart
