
--░█████╗░██╗░░░░░██╗███████╗███╗░░██╗████████╗  ░█████╗░░█████╗░███╗░░██╗███████╗██╗░██████╗░
--██╔══██╗██║░░░░░██║██╔════╝████╗░██║╚══██╔══╝  ██╔══██╗██╔══██╗████╗░██║██╔════╝██║██╔════╝░
--██║░░╚═╝██║░░░░░██║█████╗░░██╔██╗██║░░░██║░░░  ██║░░╚═╝██║░░██║██╔██╗██║█████╗░░██║██║░░██╗░
--██║░░██╗██║░░░░░██║██╔══╝░░██║╚████║░░░██║░░░  ██║░░██╗██║░░██║██║╚████║██╔══╝░░██║██║░░╚██╗
--╚█████╔╝███████╗██║███████╗██║░╚███║░░░██║░░░  ╚█████╔╝╚█████╔╝██║░╚███║██║░░░░░██║╚██████╔╝
--░╚════╝░╚══════╝╚═╝╚══════╝╚═╝░░╚══╝░░░╚═╝░░░  ░╚════╝░░╚════╝░╚═╝░░╚══╝╚═╝░░░░░╚═╝░╚═════╝░

Citizen.CreateThread(function()
    while true do
        if PhoneData.isOpen then
            Wait(0)
        else
            Wait(1000)
        end

        if PhoneData.isOpen then
            DisableDisplayControlActions() 
        end
    end
end)

RegisterKeyMapping('TooglePhone', 'Open Phone', 'keyboard', 'F1')

local AbleToOpen = true
RegisterCommand("TooglePhone",function()
    if AbleToOpen then
        AbleToOpen = false
        if not IsPedDeadOrDying(PlayerPed, 1) or GetEntityHealth(PlayerPed) > 0 then
            if Config.Framework == 'ESX' then
                OpenPhone()
            elseif Config.Framework == 'QBCore' then
                local data = QBCore.Functions.GetPlayerData()
                if not data.metadata['isdead'] and not data.metadata['inlaststand'] and not data.metadata['ishandcuffed'] and not IsPauseMenuActive() then 
                    OpenPhone()
                end
            end
        end
        Wait(1000)
        AbleToOpen = true
    end
end)

-- Disabled control when the phone its opened
function DisableDisplayControlActions()
    if not Config.DisableMovement then
        DisableControlAction(0, 18, true) -- disable mouse
        DisableControlAction(0, 69, true) -- disable mouse
        DisableControlAction(0, 92, true) -- disable mouse
        DisableControlAction(0, 106, true) -- disable mouse
        DisableControlAction(0, 122, true) -- disable mouse
        

        DisableControlAction(0, 12, true) -- disable mouse look
        DisableControlAction(0, 13, true) -- disable mouse look

        DisableControlAction(0, 1, true) -- disable mouse look
        DisableControlAction(0, 2, true) -- disable mouse look
        DisableControlAction(0, 3, true) -- disable mouse look
        DisableControlAction(0, 4, true) -- disable mouse look
        DisableControlAction(0, 5, true) -- disable mouse look
        DisableControlAction(0, 6, true) -- disable mouse look
        DisableControlAction(0, 263, true) -- disable melee
        DisableControlAction(0, 264, true) -- disable melee
        DisableControlAction(0, 257, true) -- disable melee
        DisableControlAction(0, 140, true) -- disable melee
        DisableControlAction(0, 141, true) -- disable melee
        DisableControlAction(0, 142, true) -- disable melee
        DisableControlAction(0, 143, true) -- disable melee
        DisableControlAction(0, 177, true) -- disable escape
        DisableControlAction(0, 200, true) -- disable escape
        DisableControlAction(0, 202, true) -- disable escape
        DisableControlAction(0, 322, true) -- disable escape
        DisableControlAction(0, 245, true) -- disable chat

        DisableControlAction(0, 199, true) -- disable chat
        DisableControlAction(0, 25, true) -- disable aim
        DisableControlAction(0, 24, true) -- disable shoot
        DisableControlAction(0, 45, true) -- disable Reload (R)
        DisableControlAction(0, 44, true) -- disable Cover (Q)
        DisableControlAction(0, 0, true) -- disable Camera (V)
        DisableControlAction(0, 26, true) -- disable Camera Back (C)
        DisableControlAction(0, 20, true) -- disable Z
        DisableControlAction(0, 236, true) -- disable v
        
        DisableControlAction(0, 157, true) -- disable 1
        DisableControlAction(0, 158, true) -- disable 2
        DisableControlAction(0, 160, true) -- disable 3
        DisableControlAction(0, 164, true) -- disable 4
        DisableControlAction(0, 165, true) -- disable 5

        DisableControlAction(0, 159, true) -- disable 6
        DisableControlAction(0, 161, true) -- disable 7
        DisableControlAction(0, 162, true) -- disable 8
        DisableControlAction(0, 163, true) -- disable 9

        DisableControlAction(0, 163, true) -- disable 9

        DisableControlAction(0, 73, true) -- disable X
        DisableControlAction(0, 47, true) -- disable G
        DisableControlAction(0, 58, true) -- disable G
        
        DisableControlAction(0, 74, true) -- disable H
        
    else 
        DisableAllControlActions(true)
    end 
end

-- Dispatch event.
RegisterNetEvent('qs-smartphone:client:addPoliceAlert', function(alertData)
    for i=1, #Config.PoliceAppJobs, 1 do
        if GetJobFramework().name == Config.PoliceAppJobs[i] then
            SendNUIMessage({
                action = "AddPoliceAlert",
                alert = alertData,
            })
            SendNUIMessage({
                action = "PhoneNotification",
                PhoneNotify = {
                    title = Lang("POLICE_TITLE"),
                    text = alertData.description,
                    icon = "./img/apps/police.png",
                },
            })
        end
    end
end)

Config.CustomDispatch = false --- @param Use a custom dispatch script? (Jobs message only) 

--- @param 'client' excute on client side
--- @param 'server' excute on server side go to (config_server.lua 'qs-smartphone:sever:CustomServerDispatch')

Config.CustomDispatchSide = 'client' 

RegisterNetEvent('qs-smartphone:client:CustomClientDispatch', function(data, sender)

    --- @param data.phone   return the job 
    --- @param data.message return the message 
    --- @param data.type    return the type of message
    --- @param sender       return the sender of message

    --[[ Example of cd_dispatch
        local dispatch = exports['cd_dispatch']:GetPlayerInfo()
        TriggerServerEvent('cd_dispatch:AddNotification', {
            job_table = {data.phone}, -- Data of job
            coords = dispatch.coords,
            title = '10-15 - Phone Dispatch',
            message = data.message, -- Data of messages
            flash = 0,
            unique_id = tostring(math.random(0000000,9999999)),
            blip = {
                sprite = 431, 
                scale = 1.2, 
                colour = 3,
                flashes = false, 
                text = data.message,
                time = (5*60*1000),
                sound = 1,
            }
        }) 
    ]]
end)

-- /fakemessage ID 553916036 1234 loc a 412.0429 -160.9686
-- /fakemessage ID 553916036 1234 sms Message
RegisterCommand("fakemessage", function(source, args, rawCommand)
    local player = args[1]
    if player then

        local ToNumber = args[2] --- @param The number receiving the message     

        local FakeData = {
            FakeNumber = args[3], --- @param The fake number that will send the message   

            type = args[4],     --- @param The type of message ('sms' or 'loc')  
                                --- @param if 'sms' the user recive a message 
                                --- @param if 'loc' the user recive a location (x, y)

            message = args[5], --- @param The message
            x = args[6], --- @param Coord X
            y = args[7], --- @param Coord Y
        }

        TriggerServerEvent('qs-smartphone:server:SendFakeNUmber', ToNumber, FakeData)
    end
end, false)

--[[ Example usage in another script

 Location type

    local ToNumber = 113250 -- Player number

    local FakeData = {
        FakeNumber = 1515123 -- Fake number
        type = 'loc'
        x = 526.4760,
        y = -156.0509,
    }
    TriggerServerEvent('qs-smartphone:server:SendFakeNUmber', ToNumber, FakeData)
    
 Message type

    local ToNumber = 113250 -- Player number

    local FakeData = {
        FakeNumber = 1515123 -- Fake number
        type = 'sms'
        message = 'This is my list of drugs : '
    }
    TriggerServerEvent('qs-smartphone:server:SendFakeNUmber', ToNumber, FakeData)
]]

-- Twitter link to post in another scripts
Config.CustomCodeTwitter = false
function CustomCodeTwitter(TweetMessage)
    -- This is the values
    print(TweetMessage.name)
    print(TweetMessage.username)
    print(TweetMessage.message)
    print(TweetMessage.image)

    -- for OkokChat example, working perfect, you can use!
    -- local username = TweetMessage.name.." @"..TweetMessage.username
    -- TriggerServerEvent("qs-smartphone:server:twitterChat", username, TweetMessage.message)
end

-- Remove the phone if buged (Hitaro-san#2032)
RegisterCommand('propfix', function()
    for k, v in pairs(GetGamePool('CObject')) do
        if IsEntityAttachedToEntity(PlayerPed, v) then
            SetEntityAsMissionEntity(v, true, true)
            DeleteObject(v)
            DeleteEntity(v)
        end
    end
end)

-- Load Phone.
RegisterCommand("telfix", function(source)
    phoneLoaded = false
    loading = false
    LoadPhone()
end, false)

-- Fake call for test.
RegisterCommand("fakecall", function(source, raw, args)
    TriggerEvent('qs-smartphone:client:GetCalled', math.random(11111,99999), math.random(10000,11000), false)
end, false)

-- Send contact command.
RegisterCommand("givecontact", function()
    TriggerEvent('qs-smartphone:client:GiveContactDetails')
end)

RegisterCommand("testnotifie", function()
    TriggerServerEvent('qs-smartphone:server:AddNotifies', {
        head = 'Tiktok',
        msg = '@Quasar started following you!',
        app = 'tiktok' -- qs-smartphone/html/img/app/imagename.png.
    })
end)

-- Send message command.
RegisterCommand("jobmessagetest", function()
    TriggerEvent('qs-smartphone:sendJobMessage', {
        phone = 'ambulance', -- Number
        type = 'message', -- Ignore, only for message
        message = 'Hello Ambulaces!' -- Custom message
    })
end)

-- Player dead?
AddEventHandler('esx:onPlayerDeath', function()
    TriggerEvent('qs-smartphone:ClosePhone')
end)

function isPhoneOpen()
    if PhoneData.isOpen then
        return true
    else
        return false
    end
end