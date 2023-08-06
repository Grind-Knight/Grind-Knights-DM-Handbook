/*
Filename: oview().dm

Description:
	This file demonstrates the use of the 'oview()' proc in BYOND's Dream Maker language. The proc is described in
	detail, and examples of its use are provided.

Usage: 
	To see this proc in action, launch the game, and use the verb "OviewDemo".

Brief description of the proc:
	The 'oview()' proc is a built-in proc in DM that returns a list of all visible atoms (areas, turfs, objects, mobs)
	that are in view, but not at the center atom's position. By default, the center is the usr (the player's mob) and the range
	is the client's view radius.

Format:
	oview(Dist=5,Center=usr)

Returns:
	A list of visible objects within Dist tiles of Center, excluding the Center itself.

Args:
	Dist: A number.
	Center: An object on the map.


Example 1: 
Here's a basic example of how to use the 'oview()' proc. This example will list all atoms visible to the usr.
*/
mob
   proc
      oview_example1()
         src << "<b><font color='green'>Example 1: Basic <u>oview()</u> usage</font></b>"
         src << "Following are the names of all atoms currently visible to you, excluding yourself:"
         for(var/atom/A in oview())
            src << A.name
         src << "<font color='red'>End of Example 1</font>\n"

/*
Example 2: 
This example uses the 'oview()' proc with a specified center and range. It will list all atoms visible within a
2-tile radius of the usr, excluding the usr.
*/
mob
   proc
      oview_example2()
         src << "<b><font color='green'>Example 2: <u>oview()</u> with specified center and range</font></b>"
         src << "Following are the names of all atoms visible within a 2-tile radius of you, excluding yourself:"
         for(var/atom/A in oview(2, src))
            src << A.name
         src << "<font color='red'>End of Example 2</font>\n"

// Verbs for demonstration
mob
   verb
      OviewDemo()
         set name = "oview() Demo"
         set category = "Demo"

         // Start of demonstration
         src << "<b><font color='blue'>Starting '<u>oview()</u>' demonstration.</font></b>"

         // Demonstrate the examples
         oview_example1()
         sleep(10)
         oview_example2()

         // End of demonstration
         src << "<b><font color='blue'>'<u>oview()</u>' demonstration completed.</font></b>"

