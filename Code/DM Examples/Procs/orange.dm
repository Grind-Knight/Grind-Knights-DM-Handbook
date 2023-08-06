/*
Filename: orange.dm

Description:
	This file demonstrates the use of the 'orange()' proc in BYOND's Dream Maker language. The proc is described in
	detail, and examples of its use are provided.

Usage: 
	To see this proc in action, launch the game, and use the verb "orange() Demo".

Brief description of the proc:
	The 'orange()' proc is a built-in proc in DM that returns a list of all visible atoms (areas, turfs, objects, mobs)
	that are in a radius around the center atom's position, excluding the center atom itself. By default, the center is
   the usr (the player's mob) and the range is the client's view radius. All objects are included in the list whether 
   they are visible or not (visibility is ignored). The center object and its contents are excluded. 

Format:
	orange(Dist=5,Center=usr)

Returns:
	A list of objects within Dist tiles of Center, excluding the Center itself.

Args:
	Dist: A number.
	Center: An object on the map.

Example 1: 
Here's a basic example of how to use the 'orange()' proc. This example will list all atoms within a radius around the usr.
*/
mob
   proc
      orange_example1()
         src << "<b><font color='green'>Example 1: Basic <u>orange()</u> usage</font></b>"
         src << "Following are the names of all atoms within a radius around you, excluding yourself:"
         for(var/atom/A in orange())
            src << A.name
         src << "<font color='red'>End of Example 1</font>\n"

/*
Example 2: 
This example uses the 'orange()' proc with a specified center and range. It will list all atoms within a
2-tile radius around the usr, excluding the usr.
*/
mob
   proc
      orange_example2()
         src << "<b><font color='green'>Example 2: <u>orange()</u> with specified center and range</font></b>"
         src << "Following are the names of all atoms within a 2-tile radius around you, excluding yourself:"
         for(var/atom/A in orange(2, src))
            src << A.name
         src << "<font color='red'>End of Example 2</font>\n"

// Verbs for demonstration
mob
   verb
      OrangeDemo()
         set name = "orange() Demo"
         set category = "Demo"

         // Start of demonstration
         src << "<b><font color='blue'>Starting '<u>orange()</u>' demonstration.</font></b>"

         // Demonstrate the examples
         orange_example1()
         sleep(10)
         orange_example2()

         // End of demonstration
         src << "<b><font color='blue'>'<u>orange()</u>' demonstration completed.</font></b>"