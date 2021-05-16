# Perl-Search-Replace

Be careful with this script, especially with special characters

The find command is originally set to work with file "testMeFirst.html" for testing. Change filenames to your file(s) when you are done testing.

You may need to adjust permissions of this script, the "testMeFirst.html" file or your own file(s) for this script to run... 

      $ sudo chmod 755 search_replace.pl

Or permissions to file(s) to be altered

      $ chmod 644 testMeFirst.html

if $command is set to find "*.html" the find command will get a list of all files ending in "html"  excluding those without permission.

This script will skip updating files without permission ( grep -v "Permission denied" )

If you wish to see error messages displayed remove 2/dev/null and grep -v "Permission denied" ) from the $command/find line

Change the $replace variable with the text you wish to replace... such as a spelling error.

Change the $replace_with variable with the text you would like to replace... such as a corrected spelling.

To run the script...
            
     $ ./search_replace.pl
