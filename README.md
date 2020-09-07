# AMIMIR
CLI utility for shutting down BT and WiFi and send your MacOS to sleep 

![A Mimir Meme](img/amimir.jpeg)

## Prerequisites

Install [blueutil](https://github.com/toy/blueutil)

```
brew install blueutil
```

## How it works

### Sleep

- Shutdown bluetooth using `blueutil`
- Shutdown WiFi using `networksetup`
- Put your Mac to sleep using `pmset`

```
./amimir.sh sleep
```

### Wake

- Power on bluetooth using `blueutil`
- Power on WiFi using `networksetup`

```
./amimir.sh wake
```

### Status

- Prints bluetooth and WiFi Status

```
./amimir.sh status
Bluetooth is ON
Wi-Fi Power (en0): On
```

## ToDo

- [ ] Install subcommand: adds `amimir` on user's PATH (and installs `blueutil` ?)
- [ ] Uninstall subcommand: removes `amimir` from user's PATH
- [ ] Clean subcommand: removes `blueutil`?
- [ ] Add logging
- [ ] Instructions for calling with a shortcut 

----

Thanks [@Nassty](https://github.com/Nassty) for suggesting application name.
