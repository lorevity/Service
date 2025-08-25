--!strict

local Types = require("@types/shared/Service")

local GetService = game.GetService

local function CacheService(self: Types.Format, Name: string): Instance?
    local Cache = rawget(self, Name)

    if Cache then
        return Cache
    end

    local Service = GetService(game, Name)

    if cloneref then
        Service = cloneref(Service)
    end

    rawset(self, Name, Service)

    return Service
end

local ServiceUtil = setmetatable({}, {
    __index = CacheService,
})

return ServiceUtil :: Types.Map<typeof(ServiceUtil)>