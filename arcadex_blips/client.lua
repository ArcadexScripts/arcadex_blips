CreateThread(function()
    for _, v in pairs(Config.Blipz) do
        local zblip = AddBlipForCoord(v.coords.x, v.coords.y, v.coords.z)
        SetBlipSprite(zblip, v.sprite)
        SetBlipScale(zblip, v.scale)
        SetBlipColour(zblip, v.colour)
        SetBlipAsShortRange(zblip, v.asshortrange)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(v.label)
        EndTextCommandSetBlipName(zblip)
    end
end)