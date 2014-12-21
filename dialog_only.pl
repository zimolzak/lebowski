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
	my $this_string = join(" ", @this_speech);
	push (@dialog, $this_string) if $this_string =~ /[a-zA-Z]/;
	#print join(" ", @this_speech) . "\n\n";
	undef @this_speech;
	next;
    }
}
print join("\n\n", @dialog);
