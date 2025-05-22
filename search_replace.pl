u#!/usr/bin/env perl

# File name: search_replace.pl
# Perl Script to Find and Replace Text Across Multiple Files and Sub Directories
# By Joel Rader  info[at]joelrader[dot]net

# This script is sensitive to special characters in the $replace and $replace_with variables, Careful.

use warnings;
use strict;
use diagnostics;

my $file = "";
my $count = 0;


# find command below is now set to work with file "testMeFirst.html" for testing. Change filename to the file(s) you are testing.
# You may need to adjust permissions of this script, the "testMeFirst.html" file or your own file(s) for this script to run... 
# As an example the find command will get a list of all files ending in "html" if $command is set to find "*.html" excluding those without permission. You could also set $command = 'find . -name  "*.*htm*"'; to include .htm, .shtml and .html files.
# This script will skip updating files without permission

my $command = 'find . -name "testMeFirst.html"';
my @output = `$command`;

foreach(@output)
{
	my $lines = "";
	$file = $_;

	open(FILE, $file) or die "Can\'t open $_\n";
	while (<FILE>)
	{
		$lines .= $_;
	}
	close(FILE);
 	
	# Make changes here, the next two lines. Be careful with special characters.
	my $replace = "mispeled word";
        my $replace_with = "misspelled word";

	if($lines =~ s/$replace/$replace_with/g)
	{	
		open(NEWFILE, ">$file") or die "Can\'t open $_\n";
		print NEWFILE $lines;
		close(NEWFILE);
		$count += 1;
		print "$file";
	}
}

 print "$count file(s) updated.\n";
