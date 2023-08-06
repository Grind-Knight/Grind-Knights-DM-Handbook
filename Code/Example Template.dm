/*
Filename: procname().dm

Description:
	This file demonstrates the use of the 'example_proc' in BYOND's Dream Maker language. The proc is described in detail, 
	and examples of its use are provided.

Usage: 
	To see this proc in action, launch the game, and use the verb "ExampleProcDemo".

Brief description of the proc:
	The 'example_proc' is a built-in proc in DM that... [describe the proc here].

Format:
	example_proc(Arg1=default1, Arg2=default2, ...)

Returns:
	[Describe what the proc returns.]

Args:
	Arg1: [Describe the first argument]
	Arg2: [Describe the second argument]
	...

Example 1: 
Here's a basic example of how to use the 'example_proc'. [Briefly describe the example]
*/
mob
	proc
		procname_example1()
			src << "<b><font color='green'>Example 1: Basic <u>example_proc</u> usage</font></b>"
			// Add the example code here.
			src << "<font color='red'>End of Example 1</font>\n"

/*
Example 2: 
This example uses the 'example_proc' with... [Briefly describe the example]
*/
mob
   proc
      procname_example2()
         src << "<b><font color='green'>Example 2: <u>example_proc</u> with ...</font></b>"
         // Add the example code here.
         src << "<font color='red'>End of Example 2</font>\n"

// Verbs for demonstration
mob
   verb
      ProcnameDemo()
         set name = "ExampleProcDemo"
         set category = "Demo"

         // Start of demonstration
         src << "<b><font color='blue'>Starting '<u>example_proc</u>' demonstration.</font></b>"

         // Demonstrate the examples
         example1()
         sleep(10)
         example2()

         // End of demonstration
         src << "<b><font color='blue'>'<u>example_proc</u>' demonstration completed.</font></b>"
