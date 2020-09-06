# aurora
CLI utility for shutting down BT and WiFi and send your MacOS to sleep 

## Prerequisites

Install [blueutil](https://github.com/toy/blueutil)

```
brew install blueutil
```

## How it works

- Shutdown bluetooth using `blueutil`
- Shutdown WiFi using `networksetup`
- Put your Mac to sleep using `pmset`

```
./aurora.sh sleep
```
