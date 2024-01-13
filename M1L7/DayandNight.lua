--[[
Author:
	Adrian Josele G. Quional
	
Script description:
	This script demonstrates day and night cycle in the game by continuously changing the ClockTime
	property of Lighting.
	
How to use the script:
	- Create a Script object inside of ServerScript Service (it can also be in the Workspace)
	- Copy the contents of this script to the Script object created
--]]

-- initial value of the ClockTime
local clockval = 0

-- continuously change the ClockTime property according to a chosen rate 
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
	
	-- wait for a certain amount of time before incrementing 
	-- see below for additional notes
	wait() 
end

--[[
	regarding "wait()":
	- if there's no argument, the average number of seconds to wait is 0.03333s (it's not exact)
	- it is recommended to avoid using wait() without an argument
	- reference: https://devforum.roblox.com/t/if-you-write-wait-without-any-number-in-it-how-much-will-it-wait/1085814
--]]
