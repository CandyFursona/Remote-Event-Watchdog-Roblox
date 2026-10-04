# Remote-Event-Watchdog-Roblox

This script captures all events replicated to the game client; the handler receives the call, reads the arguments, and outputs them to the developer console (F9 or `/console` in chat).

inject:
```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/CandyFursona/Remote-Event-Watchdog-Roblox/refs/heads/main/Watchdog.lua"))()
```
