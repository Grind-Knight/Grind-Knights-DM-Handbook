/*
 * Filename: View.dm
 * 
 * Description:
 * This file demonstrates the use of the 'view()' proc in BYOND's Dream Maker language. The proc is described in detail, 
 * and examples of its use are provided.
 * 
 * Usage: 
 * To see this proc in action, launch the game, and use the verb "ViewDemo".
 * 
 * Brief description of the proc:
 * The 'view()' proc is a built-in proc in DM that returns a list of all visible atoms (objects, mobs, turfs) within a certain range 
 * of a given center atom. By default, the center is the usr (the player's mob) and the range is the client's view radius.
 */

/*
 * Example 1: 
 * Here's a basic example of how to use the 'view()' proc. This example will list all atoms visible to the usr.
 */
mob
	proc
		view_example1()
			src << "<b><font color='green'>Example 1: Basic view() usage</font></b>"
			src << "Following are the names of all atoms currently visible to you:"
			for(var/atom/A in view())
				src << A.name
			src << "<font color='red'>End of Example 1</font>\n"

/*
 * Example 2: 
 * This example uses the 'view()' proc with a specified center and range. It will list all atoms visible within a 5-tile radius of the usr.
 */
mob
	proc
		view_example2()
			src << "<b><font color='green'>Example 2: view() with specified center and range</font></b>"
			src << "Following are the names of all atoms visible within a 5-tile radius of you:"
			for(var/atom/A in view(5, src))
				src << A.name
			src << "<font color='red'>End of Example 2</font>\n"

// Verbs for demonstration
mob
	verb
		ViewDemo()
			set name = "ViewDemo"
			set category = "Demo"

			// Start of demonstration
			src << "<b><font color='blue'>Starting 'view()' demonstration.</font></b>"

			// Demonstrate the examples
			view_example1()
			sleep(10)
			view_example2()

			// End of demonstration
			src << "<b><font color='blue'>'view()' demonstration completed.</font></b>"