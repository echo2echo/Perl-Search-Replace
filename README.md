# Perl-Search-Replace

The find command is set to work with file "testMeFirst.html" for testing. Change filename to the file(s) you are testing.
You may need to adjust permissions of this script, the "testMeFirst.html" file or your own file(s) for this script to run... 


The find command will get a list of all files ending in "html" if $command is set to find "*.html" excluding those without permission.
This script will skip updating files without permission ( grep -v "Permission denied" below )
