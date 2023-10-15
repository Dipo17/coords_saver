RegisterCommand("coords", function(source, args)
    
    local coords_type = tonumber(args[1]) or 3
    local coords

    -- Get Coords By Type
    if(coords_type == 2) then
        coords = vector2(GetEntityCoords(PlayerPedId()).x,GetEntityCoords(PlayerPedId()).y)
    elseif(coords_type == 3) then
        coords = vector3(GetEntityCoords(PlayerPedId()).x,GetEntityCoords(PlayerPedId()).y,GetEntityCoords(PlayerPedId()).z)
    elseif(coords_type == 4) then
        coords = vector4(GetEntityCoords(PlayerPedId()).x,GetEntityCoords(PlayerPedId()).y,GetEntityCoords(PlayerPedId()).z,GetEntityHeading(PlayerPedId()))
    end

    SendNUIMessage({
        message = "copy",
        coords = tostring(coords)
    })
    
    
end)

TriggerEvent('chat:addSuggestion', '/coords', 'Copia le cordinate', {
    { name = "Tipo di cordinate", help = "[2, 3, 4]" }
})