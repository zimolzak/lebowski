Lebowski
========

Text analytics. I wrote it to operate on the script for _The Big
Lebowski_. I always thought that movie used an unusual number of
repeated phrases, such as "Her life is in your hands." This is a
six-word phrase, or 6-gram. The results amuse me greatly.

Usage: ./make.sh

or...

Usage: ./lebow.pl biglebowski.txt --ngrams 4 | sort | uniq -c | sort -nr | more
