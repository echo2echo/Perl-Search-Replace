# Perl-Search-Replace

This script can be used to find and replace text in a single file or an entire website.

Be careful with this script when using special characters. I would do a backup before running this script.

The find command is originally set to work with file "testMeFirst.html" for testing.

You may need to adjust permissions of this script, the "testMeFirst.html" file or your own file(s) for this script to run.

      $ sudo chmod 755 search_replace.pl

if $command is set to find "*.html" the command will execute on all files ending in "html"  excluding those without permission.

Change the $replace variable with the text you wish to replace... such as a spelling error.

Change the $replace_with variable with the text you would like to overwrite the $replace variable... such as a corrected spelling.

To run the script...
            
     $ ./search_replace.pl
