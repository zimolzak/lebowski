#!/usr/bin/perl -w
use strict;

my $Input_filename = shift;
open(INPUT, "< $Input_filename") or die "Can't open $Input_filename";

my $Ngrams = 1;
while (my $_ = shift) {
    $Ngrams = shift if /--ngrams/;
}

while(<INPUT>){
    s/^\s*//g;
    s/(\S+)\s+/\L$1\n/g; # lowercase everything & add newlines
    s/--/\n/g;
    s/[.,:"?!();]//g;
    print;
}
