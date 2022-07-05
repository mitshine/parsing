use strict;
use warnings;

my @words;
open (my $inFile, '<', 'search.txt') or die $!;

while (<$inFile>) {
  chomp;
  @words = split(' ');
  foreach my $word (@words) {
      printf "%s\n", $word;
  }
}
close ($inFile);