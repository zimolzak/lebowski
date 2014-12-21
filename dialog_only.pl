#!/usr/bin/perl -w
use strict;
while(<>){
    print if /^\t\t\t\t[^\t]/ or not /\t/;
}
