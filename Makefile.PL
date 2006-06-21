#!/usr/bin/env perl
#
# $Revision: 1.4 $
# $Source: /home/cvs/Template-Stash-HTML-Entities/Makefile.PL,v $
# $Date: 2006/06/21 20:42:21 $
#
use strict;
use warnings;
our $VERSION = eval {
    require version;
    version->new(qw$Revision: 1.4 $);
};

use inc::Module::Install;
eval {
    require ExtUtils::MakeMaker::Coverage;
    ExtUtils::MakeMaker::Coverage->import;
};

name 'Template-Stash-HTML-Entities';
version '0.02';
all_from 'lib/Template/Stash/HTML/Entities.pm';

requires 'version'          => 0;
requires 'HTML::Entities'   => 0;
requires 'Template::Config' => 0;

WriteAll;
