--[[
Author:
	Adrian Josele G. Quional
	
Script description:
	This script demonstrates day and night cycle in the game, along with the control of the street light
	depending on the time of the day.
	
How to use the script:
	- Create a street light model with a light source object
	- Create a Script object inside of ServerScript Service (it can also be in the Workspace)
	- Copy the contents of this script to the Script object created
	- Note that if there is a separate script to enable day and night cycle, disable that script
		(that is, there should be only one script controlling the ClockTime for the whole game)
--]]

-- initial value of the ClockTime
local clockval = 0

-- absolute path reference to the SpotLight object (vary according to your specific use case)
local streetlight = game.workspace.SimpleAutomatedStreetLight.StreetLight.SpotLight

-- continuously change the ClockTime property according to a chosen rate 
-- also turn on and off the streetlight depending on the time of the day
while true do
	-- assign whatever value clockval has to the ClockTime property
	game.Lighting.ClockTime = clockval
	
	-- increase clockval by a certain amount
	clockval = clockval + 0.1
	-- 0.1 is fast, try using 0.01
	
	-- if clockval goes beyond 24, clockval resets to 0
	-- this is because the ClockTime property has a range of values from 0 up to 24, but not including 24
	if clockval > 24 then 
		clockval = 0 
	end
	
	-- if time in the game is between 4:00 PM to 6:00 AM (nighttime), the streetlight would turn on
	if clockval > 16 or clockval < 6 then 
		streetlight.Enabled = true 
	end
	
	-- if time in the game is between 6:00 AM to 4:00 PM (daytime), the streetlight would turn off
	if clockval > 6 and clockval < 16 then 
		streetlight.Enabled = false 
	end
	
	-- wait for a certain amount of time before incrementing 
	-- see below for additional notes
	wait() 
end

--[[
	regarding "wait()":
	 * if there's no argument, the average number of seconds to wait is 0.03333s (it's not exact)
	 * it is recommended to avoid using wait() without an argument
	 * reference: https://devforum.roblox.com/t/if-you-write-wait-without-any-number-in-it-how-much-will-it-wait/1085814
--]]
