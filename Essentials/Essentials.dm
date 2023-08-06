/*
These are needed to compile a simple game.

To see a specific example of something, be sure to include the file before compiling.
 */

world
	fps = 20		// 25 frames per second
	icon_size = 32	// 32x32 icon size by default
	view = "16x9"

client
	fps = 60

// Make objects move 8 pixels per tick when walking

mob
	icon = 'Essentials/Player.dmi'
	step_size = 8

obj
	step_size = 8

turf
	icon = 'Essentials/Turfs.dmi'
	Grass
		icon_state = "Grass"