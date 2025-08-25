set shell := ["powershell", "-c"]

debug *FILE:
    ./bundler/darklua process src/init.luau build/debug.luau -c ./bundler/debug.json
    Get-Content build/debug.luau | Set-Clipboard

release *FILE:
    ./bundler/darklua process src/init.luau build/release.luau -c ./bundler/release.json
    Get-Content build/release.luau | Set-Clipboard