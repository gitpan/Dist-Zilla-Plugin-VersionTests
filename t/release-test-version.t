#!/usr/bin/perl

BEGIN {
  unless ($ENV{RELEASE_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for release candidate testing');
  }
}

use 5.006;
use strict;
use warnings;
use Test::More;

eval "use Test::Version";
plan skip_all => "Test::Version required for testing versions"
	if $@;

version_all_ok();
done_testing;
