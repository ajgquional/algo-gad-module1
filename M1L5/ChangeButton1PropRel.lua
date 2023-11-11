--[[
Author:
	Adrian Josele G. Quional
	
Program description:
	This program demonstrates how to change the properties of a part while the game is running;
	however, this is an improved version wherein the script is attached to the button itself. 
	This eliminates the need to acquire the "absolute path" of the property to be changed; rather,
	only the relative path to the property is needed.
	
How to use the script:
	- Create a button object (any part can be used) and make sure to anchor it
	- Create a Script object inside the button object
	- Copy the contents of this script to the Script object created
--]]

-- referring to the object that the script is attached to
local button = script.Parent

-- creating a function to change the properties of the button
local function changeButtonProp()
	-- targeting the Material property of the button where the script is attached to 
	-- changing the Material property to Neon 
	button.Material = Enum.Material.Neon
	
	-- targeting the BrickColor property of the button where the script is attached to
	-- changing the BrickColor property to "Lime green"
	button.BrickColor = BrickColor.new('Lime green')
	
	-- targeting the Transparency property of the button where the script is attached to 
	-- changing the Transparency property to 0.5
	button.Transparency = 0.5
end

-- executing the function when the button is touched
button.Touched:Connect(changeButtonProp)
