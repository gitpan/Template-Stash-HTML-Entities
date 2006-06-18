#!/usr/bin/env perl
#
# $Revision: 1.1 $
# $Source: /home/cvs/Template-Stash-HTML-Entities/Makefile.PL,v $
# $Date: 2006/06/18 19:34:17 $
#
use strict;
use warnings;
our $VERSION = '0.01';

use inc::Module::Install;
eval {
    require ExtUtils::MakeMaker::Coverage;
    ExtUtils::MakeMaker::Coverage->import;
};

name 'Template-Stash-HTML-Entities';
all_from 'lib/Template/Stash/HTML/Entities.pm';

requires 'HTML::Entities' => 0;

WriteAll;
