--[[
Author:
	Adrian Josele G. Quional
	
Program description:
	This program demonstrates how to change the properties of a part while the game is running. 
	Uses the absolute path of the properties.
	
How to use the script:
	- Create a button object (any part can be used) and make sure to anchor it
	- Rename the button object as "Button1" (if a different name would be used, make sure to update the codes)
	- Create a Script object inside ServerScriptService
	- Copy the contents of this script to the Script object created
--]]

-- creating a function to change the properties of a part
function changeButton1Prop()
	-- targeting the Material property of Button1 and changing it to Neon 
	game.Workspace.Button1.Material = Enum.Material.Neon
	-- targeting the BrickColor property of Button1 and changing it to "Lime green"
	game.Workspace.Button1.BrickColor = BrickColor.new('Lime green')
	-- targeting the Transparency property of Button1 and changing it to 0.5
	game.Workspace.Button1.Transparency = 0.5
end

-- executing the function when Button1 is touched
game.Workspace.Button1.Touched:Connect(changeButton1Prop)
