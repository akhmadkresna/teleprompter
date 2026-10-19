# Hmm Files teleprompter

One file, no install, works offline: open `index.html` (double-click, or `open ~/teleprompter/index.html`).

1. Paste the script (or drop / open a `.md` / `.txt`). With "Hide non-spoken" on, `#` headings,
   `[[ notes ]]`, `**bold**` marks and old `/` `//` pause marks are hidden; section titles can show as
   dim dividers.
2. Start prompter (Cmd/Ctrl+Enter). Space plays with a 3-2-1 countdown.

Speed is in words per minute (60-260, steps of 5; Alt for 1). The scroll follows the actual word
positions, so the pace stays the same at any text size or width. Script, settings and position are
remembered in this browser.

## Shortcuts

| Key | Action |
|---|---|
| Space | play / pause |
| ↑ ↓ or + - | speed ±5 wpm (Alt: ±1) |
| ← → | back / forward one line |
| [ ] | text smaller / bigger |
| , . | lines narrower / wider |
| ; ' | line height tighter / looser |
| Shift+↑ ↓ | move the reading guide |
| Home or R / End | top / end |
| M / V | mirror horizontal / flip vertical |
| C | countdown on/off |
| F | fullscreen |
| Esc | playing: pause + controls · paused: editor |
| E | editor |
| ? or H | help |
| wheel / drag | scroll by hand, also while playing |
| click / tap a line | jump there |

## iPad / phone

`./serve.sh` (port 8765, or `./serve.sh 9000`) prints a `http://<mac-ip>:8765/` address; open it on a
device on the same Wi-Fi. Ctrl+C stops it. Each device (and `file://` vs `http://`) keeps its own saved
script, so paste the script there once.
