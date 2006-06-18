#!/usr/bin/env perl
#
# $Revision: 1.1 $
# $Source: /home/cvs/Template-Stash-HTML-Entities/t/Template-Stash-HTML-Entities.t,v $
# $Date: 2006/06/18 19:34:22 $
#
use strict;
use warnings;
our $VERSION = '0.01';

use blib;
use Test::More tests => 3;

use Template::Config;
use Template::Stash::HTML::Entities;

my $stash = Template::Stash::HTML::Entities->new;

isa_ok( $stash, $Template::Config::STASH );

$stash->set( value => q{&} );
is( $stash->get('value'), '&amp;', 'encoded automatically' );

$stash->set( value => [q{&}] );
is_deeply( $stash->get('value'), [q{&}], 'reference is not encoded' );
