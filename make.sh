#!/bin/sh

./lebow.pl biglebowski.txt | sort | uniq -c | sort -nr > out.txt

