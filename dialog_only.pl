#!/usr/bin/perl -w
use strict;
my @dialog;
my @this_speech;
while(<>){
    chomp;
    s/\r//g;
    if (s/^\t\t\t\t([^\t])/$1/){
	push (@this_speech, $_) ;
    }
    else {
	push (@dialog, join(" ", @this_speech));
	#print join(" ", @this_speech) . "\n\n";
	undef @this_speech;
	next;
    }
}
print join("\n\n", @dialog);
