--[[
Author:
	Adrian Josele G. Quional
	
Program description:
	This program demonstrates how to change the angular velocity of a rotating platform when a button is pressed.
	
How to use the script:
	- Create the rotating platform, but leave the AngularVelocity Property of the HingeConstraint to 0
	- Create a button that would change the angular velocity of the platform
	- Make sure to anchor the button, as well as the platform's support
	- Create a Script object inside ServerScriptService
	- Copy the contents of this script to the Script object created
--]]

-- references to the button and the hinge constraint of the platform, for easy coding
-- note that actual absolute path can change depending on the names used for the parts
local button = game.Workspace.RotateButton
local hinge = game.Workspace.RotatingPlatform.Support.HingeConstraint

-- function to rotate the platform when a button is 
function rotate()
	-- the platform would rotate if there's a value in the AngularVelocity Property of the HingeConstraint
	hinge.AngularVelocity = 1
	-- just destroys the button from the game, to prevent pressing the button again 
	button:Destroy()
end

-- rotates the platform when the button is pressed
button.Touched:Connect(rotate)
