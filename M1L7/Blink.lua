--[[
Author:
	Adrian Josele G. Quional
	
Script description:
	This script demonstrates blinking of a light source for a chosen time interval. 
	This script uses "relative path" in that the script is actually added inside of the part itself.
	
How to use the script:
	- Create a part that would contain the light source object
	- Create a Script object inside the part
	- Copy the contents of this script to the Script object created
--]]

-- reference to the light source
-- if the light source is different (PointLight or SurfaceLight), change the reference to that instead
local lightsource = script.Parent.SpotLight

-- time interval for blinking of the light source
-- change according to preference
local timeinterval = 1

-- continuously blink the light source according to the chosen time interval
while true do
	lightsource.Enabled = true
	wait(timeinterval)
	lightsource.Enabled = false
	wait(timeinterval)
end
