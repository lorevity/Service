# Service
Service is a type-safe utility in Roblox that automatically recreates the service through `cloneref` and caches it for future use, while at the same time providing a more beautiful and compact organization of the code in the project.

# Installation
- This utility was created with [darklua](https://github.com/seaofvoices/darklua) compatibility and assumed to have the same compatibility when used. <br/>
- To preserve the typization when using it, it is recommended to [copy the repository](https://docs.github.com/ru/repositories/creating-and-managing-repositories/cloning-a-repository) to use the files separately. <br/>
- Otherwise, you have the option to [download the release version](https://github.com/lorevity/Service/releases/download/v0.0.1/service.luau) for future reference.

# Usage
- The utility itself is very simple and easy to use.
- To access a service, you simply need to specify its name and the utility itself will cache and return the service.
```lua
local service = require("@utils/service") -- Alias/service.luau
print(service.ReplicatedFirst) -- Output: ReplicatedFirst
```
> [!NOTE]
> It's recommended to localize services if you access them repeatedly. This will avoid additional indexing which is affecting your optimization.
