--all work by braukStauter

pB = false

RegisterServerEvent("chatCommandEntered")
AddEventHandler("chatCommandEntered", function(fullcommand)
        cm = stringsplit(fullcommand, " ")
        
        if(cm[1] == "/p") then
            TriggerClientEvent('chatMessage', -1, 'PANIC', { 255, 0, 0 }, GetPlayerName(source) ..' HAS PRESSED THEIR PANIC BUTTON!')
            pB = true
        end
        
        
        if(cm[2] == "/cp") then
            if(pB = true) then
                TriggerClientEvent('chatMessage', -1, 'PANIC', { 0, 255, 0 }, GetPlayerName(source) ..' HAS CLEARED THEIR PANIC BUTTON.')
                pB = false
            end
            if(pB = false) then
                TriggerClientEvent("nopB", pB)
            end
        end
end)


--server command referance by albo1125
function stringsplit(self, delimiter)
        local a = self:Split(delimiter)
        local t = {}
        for i = 0, #a - 1 do
            table.insert(t, a[i])
        end
        return t
end
function tablelength(T)
        local count = 0
        for _ in pairs(T) do count = count + 1 end
        return count
end



--all work by braukStauter
--serverPanic
--PANICv0.0.1 id 810293