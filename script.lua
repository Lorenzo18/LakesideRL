--  ╔═════════════════════════════╗
--  ║ » Copyright © 2016-2019     ║
--  ║ » by Lorenzo                ║
--  ║ » Script Author: Lorenzo    ║
--  ║ » and Lakeside MTA:RL Crew  ║
--  ╚═════════════════════════════╝

serverRestartedAMinuteAgo = true
setTimer (
	function ()
		serverRestartedAMinuteAgo = false
	end,
5000, 1 )

setTimer ( 
	function ()
		client = nil
	end,
1000, 1 )

function joinHandler ()

	setElementDimension ( source, 5 )
    fadeCamera( source, true)
    setCameraTarget( source, source )
	
	if isWithinNightTime () then
		setCameraMatrix ( source, -2063.20, 147.78, 44, -600, 240, 48.85 )
	else
		setCameraMatrix ( source, -2063.20, 147.78, 44, -600, 240, 48.85 )
	end
	syncInvulnerablePedsWithPlayer ( source )
end
addEventHandler ( "onPlayerJoin", getRootElement(), joinHandler )

function getServerSlotCount ()

	triggerClientEvent ( client, "recieveServerSlotCount", client, getMaxPlayers () )
end
addEvent ( "getServerSlotCount", true )
addEventHandler ( "getServerSlotCount", getRootElement(), getServerSlotCount )

invalidChars = {}
for i = 33, 39 do
invalidChars[i] = true
end
for i = 40, 43 do
invalidChars[i] = true
end
invalidChars[47] = true
for i = 58, 64 do
invalidChars[i] = true
end
invalidChars[92] = true
invalidChars[94] = true
invalidChars[96] = true
for i = 123, 126 do
invalidChars[i] = true
end

function hasInvalidChar ( player )

	name = getPlayerName ( player )
	for i, index in pairs ( invalidChars ) do
		if not gettok ( name, 1, i ) or gettok ( name, 1, i ) ~= name then
			return true
		end
	end
	return false
end

function serverstart ()

	setGameType ( "Lakeside RL 1.8" )
	setMapName ( "Lakeside SA" )
	lastadtime = 0
	for i = 1, 14 do
		_G["arenaSlot"..i.."Occupied"] = false
	end
	setTimer ( mainTimer, 50*1000, 0 )
	deleteAllFromLoggedIn ()
end
addEventHandler ( "onResourceStart", getResourceRootElement ( getThisResource() ), serverstart )

function mainTimer ()

	local curtime = getRealTime()
	local hour = curtime.hour
	local minute = curtime.minute
	local weekday = curtime.weekday
	
	if weekday == 4 or weekday == 00 then
		if hour == 19 and math.floor ( minute / 10 ) == minute / 10 then
			outputChatBox ( "Heute um 20:00 findet die Lottoziehung statt! Falls du noch kein Los hast, kannst du noch eins bei der Liberty-Tree-Redaktion erstehen - Aktueller Jackpot: "..lottoJackpot, getRootElement(), 200, 200, 0 )
		elseif hour == 20 and minute == 0 then
			drawLottoWinners ()
		end
	end
	
	if hour == 4 and minute == 0 then
		if weekday == 6 then
			mysql_vio_query ( "UPDATE racing SET Name = 'none', MilliSekunden = '0', Sekunden = '0', Minuten = '3'" )
		end
		mysql_vio_query ( "DELETE FROM warns WHERE extends <= '"..curtime.timestamp.."'" )
		restartResource ( getThisResource() )
	elseif hour == 3 and minute == 55 then
		setServerPassword("4j23u4h234n23ui4io23")
		outputChatBox ( "ACHTUNG: Server startet neu in 5 Minuten!", getRootElement(), 255, 0, 0 )
		local time = getRealTime()
		if time.weekday == 6 then
			local result = mysql_query ( handler, "TRUNCATE TABLE weed" )
			mysql_free_result ( result )
		end
	elseif hour == 0 and minute == 0 then
		playingTimeResetAtMidnight ()
	end
end
setFPSLimit ( 65 )
setServerPassword("")

function output ()

	print ( getSecondTime ( 0 ) )
end
addCommandHandler ( "output", output )

--Ändere die IP Adresse (0.0.0.0) zu deiner v/root server IP
addEventHandler("onResourceStart", getResourceRootElement(), function ()
fetchRemote("http://checkip.dyndns.com/",
    function (response)
        if response ~= "ERROR" then
            local SERVER_IP = response:match("<body>Current IP Address: (.-)</body>") or "0.0.0.0"
            if SERVER_IP == "0.0.0.0" then
                return
            end
        end
        stopResource( getThisResource())
    end
)
end)