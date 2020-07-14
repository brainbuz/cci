#!/usr/bin/env perl

use 5.026;
use Path::Tiny;

my $conf = path( '.circleci/config.yml')->slurp();
$conf =~ m/commit (\d+)/;
my $oldbump = $1;
my $newbump = $oldbump +1;
$conf =~ s/commit $oldbump/commit $newbump/;
path( '.circleci/config.yml')->spew($conf);
say $newbump;