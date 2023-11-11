--[[
Author:
	Adrian Josele G. Quional
	
Program description:
	This program demonstrates how to change the position of a part when another part is touched.
	
How to use the script:
	- Create three objects:
		1. Button that would make an external object go left
		2. Button that would make an external object go right
		3. A single, external object that would be controlled by the two buttons
	- Make sure to anchor the objects
	- Rename the objects as follows: GoLeftButton, GoRightButton, and Arrow. 
	  Different names can be used but make sure to update the codes to make use of the chosen custom name.
	- Create a Script object inside ServerScriptService
	- Copy the contents of this script to the Script object created
--]]

-- references to the buttons and the arrow, for easy coding
-- note that actual absolute path can change depending on the names used for the parts
local leftButton = game.Workspace.GoLeftButton
local rightButton = game.Workspace.GoRightButton
local arrow = game.Workspace.Arrow

-- function that would move the arrow to a specified "left" position
function goLeft()
	-- Vector3.new changes the position of the arrow according to the coordinates specified
	arrow.Position = Vector3.new(25.75, 13.75, -4)
end

-- function that would move the arrow to a specified "right" position
function goRight()
	-- Vector3.new changes the position of the arrow according to the coordinates specified
	arrow.Position = Vector3.new(25.75, 13.75, 4)
end

-- changes the position of the arrow depending on which buttons are pressed
leftButton.Touched:Connect(goLeft)
rightButton.Touched:Connect(goRight)
