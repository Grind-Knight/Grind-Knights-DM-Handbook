/*
Filename: locate().dm

Description:
	This file demonstrates the use of the 'locate()' proc in BYOND's Dream Maker language. The proc is described in
	detail, and examples of its use are provided.

Usage: 
	To see this proc in action, launch the game, and use the verb "locate() Demo".

Brief description of the proc:
	The 'locate()' proc is a built-in proc in DM that returns the first instance of a specified type found within a 
	specified container, at a specific coordinate, with a specific tag, or with a specific string representation. 
	If no such instance is found, it returns null.

Format:
	locate(Type) in Container
	locate(X,Y,Z)
	locate(Tag)
	locate(TextRef)

Returns:
   An object of the specified type or the turf at the given coordinates.If a text string is given in place of
   an object type, the object withthe same tag is found. If a container is given, only objectsdirectly within
   that object are searched. 

Args:
   Type
      An object prototype or tag. If locate() is being used in an assignment to a variable with a declared type,
      this argument is optional and will default to the type of the variable being assigned.
   Container
      An optional container object. (The default is world.)
   X,Y,Z
      A set of numerical coordinates.
   Tag
      The value of an object's tag variable (must be unique).
   TextRef
      An embedded object reference created by the \ref text macro.

Example 1: 
This example shows how to use the 'locate()' proc to find an object of a specified type within a container.
*/
mob
   proc
      locate_example1()
         src << "<b><font color='green'>Example 1: Basic <u>locate()</u> usage</font></b>"
         var/obj/O = locate(/obj) in src.contents
         if(O)
            src << "You have an object named '[O.name]' in your inventory."
         else
            src << "You don't have any objects in your inventory."
         src << "<font color='red'>End of Example 1</font>\n"

/*
Example 2: 
This example shows how to use the 'locate()' proc to find a turf at a specific coordinate.
*/
mob
   proc
      locate_example2()
         src << "<b><font color='green'>Example 2: <u>locate()</u> with specific coordinates</font></b>"
         var/turf/T = locate(1,1,1) // Adjust the coordinates as needed
         if(T)
            src << "There is a turf named '[T.name]' at the specified coordinates."
         else
            src << "There is no turf at the specified coordinates."
         src << "<font color='red'>End of Example 2</font>\n"

/*
Example 3: 
This example shows how to use the 'locate()' proc to find an object with a specific tag.
*/
mob
   proc
      locate_example3()
         src << "<b><font color='green'>Example 3: <u>locate()</u> with specific tag</font></b>"
         var/obj/O = locate("myTag") // Replace "myTag" with the tag you are looking for
         if(O)
            src << "There is an object named '[O.name]' with the tag 'myTag'."
         else
            src << "There is no object with the tag 'myTag'."
         src << "<font color='red'>End of Example 3</font>\n"

/*
Example 4: 
This example shows how to use the 'locate()' proc to find an object with a specific text reference.
*/
mob
   proc
      locate_example4()
         src << "<b><font color='green'>Example 4: <u>locate()</u> with specific text reference</font></b>"
         var/obj/O = locate("obj/item") // Replace "obj/item" with the text reference you are looking for
         if(O)
            src << "There is an object named '[O.name]' with the text reference 'obj/item'."
         else
            src << "There is no object with the text reference 'obj/item'."
         src << "<font color='red'>End of Example 4</font>\n"

/*
Example 5: 
This example uses the 'locate()' proc to teleport the player to specific coordinates they input.
*/
mob
   proc
      locate_example5()
         src << "<b><font color='green'>Example 5: <u>locate()</u> to teleport player</font></b>"
         var/inputX = input("Enter the X coordinate", "Teleportation") as num
         var/inputY = input("Enter the Y coordinate", "Teleportation") as num
         var/inputZ = input("Enter the Z coordinate", "Teleportation") as num

         // Ensure the entered coordinates are within the map size
         if(inputX > world.maxx || inputY > world.maxy || inputZ > world.maxz || inputX < 1 || inputY < 1 || inputZ < 1)
            src << "The entered coordinates are out of the map bounds."
         else
            var/turf/T = locate(inputX,inputY,inputZ)
            if(T)
               src.Move(T)
               src << "You have been teleported to the coordinates [inputX],[inputY],[inputZ]."
            else
               src << "There is no turf at the specified coordinates."
         src << "<font color='red'>End of Example 5</font>\n"

// Adjust the demonstration verb to include the new example
mob
   verb
      LocateDemo()
         set name = "locate() Demo"
         set category = "Demo"

         // Start of demonstration
         src << "<b><font color='blue'>Starting '<u>locate()</u>' demonstration.</font></b>"

         // Demonstrate the examples
         locate_example1()
         sleep(10)
         locate_example2()
         sleep(10)
         locate_example3()
         sleep(10)
         locate_example4()
         sleep(10)
         locate_example5()

         // End of demonstration
         src << "<b><font color='blue'>'<u>locate()</u>' demonstration completed.</font></b>"
