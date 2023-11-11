--[[
Author:
	Adrian Josele G. Quional
	
Program description:
	This program checks if a Dynamite part touches a Humanoid part and changes the Health of the Humanoid object to 0. 
	Uses the relative path of the properties.
	
How to use the script:
	- Create a killbrick object (any part can be used) and make sure to anchor it
	- Create a Script object inside the killbrick object
	- Copy the contents of this script to the Script object created
--]]

-- referring to the object that the script is attached to
local killbrick = script.Parent

-- creating a function to kill a player when the Dynamite part is touched
local function onTouchKill(who)
	-- checks if the one who touched the Dynamite is a Humanoid
	if who.Parent.Humanoid then
		-- if it's a Humanoid, change the Health property of the Humanoid to 0 (which effectively kills the Humanoid)
		who.Parent.Humanoid.Health = 0
	end
end

-- executing the function when the Dynamite part is touched
killbrick.Touched:Connect(onTouchKill)
