#!/bin/sh

./lebow.pl  biglebowski.txt --ngrams 4 |sort | uniq -c| sort -nr | head -n 32 > 4grams_sample.txt
