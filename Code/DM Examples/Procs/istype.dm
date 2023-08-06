/*
Filename: istype.dm

Description:
	This file demonstrates the use of the 'istype()' proc in BYOND's Dream Maker language. The proc is described in
	detail, and examples of its use are provided.

Usage: 
	To see this proc in action, launch the game, and use the verb "istype() Demo".

Brief description of the proc:
	The 'istype()' proc is a built-in proc in DM that checks if a value is derived from a specific type. 

Format:
	istype(Val,Type) 
	istype(Val)

Returns:
   1 if Val is derived from Type; 0 otherwise.

Args:
   Val
      An object instance.
   Type
      An object prototype or instance. If no type is specified and a variable was passed in as the first argument, 
      it will default to the declared type of the variable.

Example 1: 
This example shows how to use the 'istype()' proc to check if an object in the player's inventory is of a certain type.
*/
mob
   proc
      istype_example1()
         src << "<b><font color='green'>Example 1: Basic <u>istype()</u> usage</font></b>"
         var/obj/O = locate(/obj) in src.contents
         if(istype(O, /obj))
            src << "You have an item named '[O.name]' in your inventory."
         else
            src << "You don't have any items in your inventory."
         src << "<font color='red'>End of Example 1</font>\n"

/*
Example 2: 
This example shows how to use the 'istype()' proc to check if a turf at a specific coordinate is of a certain type.
*/
mob
   proc
      istype_example2()
         src << "<b><font color='green'>Example 2: <u>istype()</u> with specific coordinates</font></b>"
         var/turf/T = locate(1,1,1) // Adjust the coordinates as needed
         if(istype(T, /turf/Grass))
            src << "There is a floor turf named '[T.name]' at the specified coordinates."
         else
            src << "There is no floor turf at the specified coordinates."
         src << "<font color='red'>End of Example 2</font>\n"

// Adjust the demonstration verb to include the new examples
mob
   verb
      IstypeDemo()
         set name = "istype() Demo"
         set category = "Demo"

         // Start of demonstration
         src << "<b><font color='blue'>Starting '<u>istype()</u>' demonstration.</font></b>"

         // Demonstrate the examples
         istype_example1()
         sleep(10)
         istype_example2()

         // End of demonstration
         src << "<b><font color='blue'>'<u>istype()</u>' demonstration completed.</font></b>"
