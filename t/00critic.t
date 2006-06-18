#!/usr/bin/env perl
#
# $Revision: 1.1 $
# $Source: /home/cvs/Template-Stash-HTML-Entities/t/00critic.t,v $
# $Date: 2006/06/18 19:34:22 $
#
use strict;
use warnings;
our $VERSION = '0.01';

use blib;
use English qw(-no_match_vars);
use Test::More;

if ( $ENV{TEST_CRITIC} || $ENV{TEST_ALL} ) {
    eval {
        my $format = "%l: %m (severity %s)\n";
        if ( $ENV{TEST_VERBOSE} ) {
            $format .= "%p\n%d\n";
        }
        require Test::Perl::Critic;
        Test::Perl::Critic->import( -format => $format, -severity => 1 );
    };
    if ($EVAL_ERROR) {
        plan skip_all => 'Test::Perl::Critic required to enable this test';
    }
}
else {
    plan skip_all => 'set TEST_CRITIC to enable this test';
}

all_critic_ok();
