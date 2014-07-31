#!/usr/bin/perl -w
use strict;

my $Input_filename = shift;
open(INPUT, "< $Input_filename") or die "Can't open $Input_filename";

my $N = 1;
while (my $_ = shift) {
    $N = shift if /--ngrams/;
}

my @unigram;
my @ngram;

while(<INPUT>){
    s/^\s*//g;
    s/(\S+)\s+/\L$1\n/g; # lowercase everything & add newlines
    s/--/\n/g;
    s/[.,:"?!();]//g;
    push(@unigram, split(/\n/, $_));
}

if($N==1){
    print join("\n", @unigram);
}
else {
    die "Bigrams and higher not yet supported";
}
