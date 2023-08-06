/*
 * Filename: [PROC_NAME].dm
 * 
 * Description:
 * This file demonstrates the use of the '[PROC_NAME]' proc in BYOND's Dream Maker language. The proc is described in detail, 
 * and examples of its use are provided.
 * 
 * Usage: 
 * To see this proc in action, launch the game, and use the verb "[ProcDemo]".
 * 
 * Brief description of the proc:
 * The '[PROC_NAME]' proc does [BRIEF_PROC_DESCRIPTION].
 */

/*
 * Example 1: 
 * Here's a basic example of how to use the '[PROC_NAME]' proc. [EXAMPLE_1_DESCRIPTION]
 */
mob
   proc
      proc_example1()
         src << "<b><font color='green'>Example 1: Basic [PROC_NAME] usage</font></b>"
         src << "[EXPLANATION_1]"
         // [EXAMPLE_1_CODE]
         src << "<font color='red'>End of Example 1</font>\n"

/*
 * Example 2: 
 * Here's another example of how to use the '[PROC_NAME]' proc. [EXAMPLE_2_DESCRIPTION]
 */
mob
   proc
      proc_example2()
         src << "<b><font color='green'>Example 2: [PROC_NAME] with [VARIANT_DESCRIPTION]</font></b>"
         src << "[EXPLANATION_2]"
         // [EXAMPLE_2_CODE]
         src << "<font color='red'>End of Example 2</font>\n"

// Verbs for demonstration
mob
   verb
      ProcDemo()
         set name = "ProcDemo"
         set category = "Demo"

         // Start of demonstration
         src << "<b><font color='blue'>Starting '[PROC_NAME]' demonstration.</font></b>"

         // Demonstrate the examples
         proc_example1()
         sleep(10)
         proc_example2()

         // End of demonstration
         src << "<b><font color='blue'>'[PROC_NAME]' demonstration completed.</font></b>"
