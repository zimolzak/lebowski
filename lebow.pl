#!/usr/bin/perl -w
use strict;

while(<>){
    s/^\s*//g;
    s/(\S+)\s+/\L$1\n/g; # lowercase everything & add newlines
    s/--/\n/g;
    s/[.,:"?!]//g;
    print;
}
