local QBCore = exports['qb-core']:GetCoreObject()

local function Notify(text, type, length)
    type = type or 'primary'
    length = length or 5000
    SendNUIMessage({
		text = text,
        type = type,
		length = length
	})
end
exports('Notify', Notify)
RegisterNetEvent(("%s:Notify"):format(GetCurrentResourceName()), Notify)

-- Comandos de teste

RegisterCommand('testeprimary', function()
    QBCore.Functions.Notify('Isto é uma notificação de teste', 'primary', 7500)
end)

RegisterCommand('testeerror', function()
    QBCore.Functions.Notify('Isto é uma notificação de teste', 'error', 7500)
end)

RegisterCommand('testesuccess', function()
    QBCore.Functions.Notify('Isto é uma notificação de teste', 'success', 7500)
end)

RegisterCommand('testepolice', function()
    QBCore.Functions.Notify('Isto é uma notificação de teste', 'police', 7500)
end)

RegisterCommand('testeambulance', function()
    QBCore.Functions.Notify('Isto é uma notificação de teste', 'ambulance', 7500)
end)

RegisterCommand('testenotificacoes', function()
    QBCore.Functions.Notify('Isto é uma notificação de teste', 'ambulance', 7500)
    QBCore.Functions.Notify('Isto é uma notificação de teste', 'police', 7500)
    QBCore.Functions.Notify('Isto é uma notificação de teste', 'success', 7500)
    QBCore.Functions.Notify('Isto é uma notificação de teste', 'error', 7500)
    QBCore.Functions.Notify('Isto é uma notificação de teste', 'primary', 7500)
end)