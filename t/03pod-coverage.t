#!/usr/bin/env perl
#
# $Revision: 1.1 $
# $Source: /home/cvs/Template-Stash-HTML-Entities/t/03pod-coverage.t,v $
# $Date: 2006/06/18 19:34:22 $
#
use strict;
use warnings;
our $VERSION = '0.01';

use blib;
use English qw(-no_match_vars);
use Test::More;

if ( $ENV{TEST_POD} || $ENV{TEST_ALL} ) {
    eval {
        require Test::Pod::Coverage;
        Test::Pod::Coverage->import;
    };
    if ($EVAL_ERROR) {
        plan skip_all => 'Test::Pod::Coverage required to enable this test';
    }
}
else {
    plan skip_all => 'set TEST_POD to enable this test';
}

all_pod_coverage_ok();
