# 💀 Skull CLI

Animated rotating ASCII skull for Linux terminals.

A retro terminal toy made in Python with colors, glitch effects, matrix mode, rainbow mode, speed controls and more.

> Press **ENTER** anytime to stop.

---

# Preview

```bash
skull --matrix
skull --rainbow
skull --glitch
```
# Features
- Animated rotating ASCII skull
- Multiple color modes
- Rainbow mode
- Matrix mode
- Glitch mode
- Blood / Fire / Ice / Ghost / Neon themes
- Speed controls
- Loop controls
- Sound beep mode
- Lightweight Python script
- Works in most Linux terminals

# Installation

### Clone repo
```bash
git clone https://github.com/jesusando/skull-cli.git
cd skull-cli
```

### Give permissions
```bash
chmod +x skull
```

### Run locally
```bash
./skull
```

### Install globally
```bash
sudo cp skull /usr/local/bin/skull
```
Now use:
```bash
skull
```

## Usage
### Default
```bash
skull
```
### Colors
```bash
skull -g
skull -r
skull -b
skull -p
skull -c
skull -y
```
### Speed
```bash
skull -x
skull -s 0.05
skull --slow
```
### Modes
```bash
skull --rainbow
skull --matrix
skull --glitch
skull --blood
skull --fire
skull --ice
skull --ghost
skull --neon
skull --random
```
### Looping
```bash
skull --once
skull --loop 5
skull --infinite
```
### Extras
```bash
skull --beep
```
### Combine
```bash
skull --matrix -x
skull --blood --beep
skull --rainbow --loop 3
```
## Stop Animation

Press:
```bash
ENTER
```
## Requirements
- Linux
- Python 3.x
- ANSI compatible terminal

## ⭐ Support

If you liked it:

Star the repo
Fork it
Customize it
Summon the skull

## Example
```bash
skull -g -s 0.2
```