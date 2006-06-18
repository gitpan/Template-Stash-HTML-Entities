#
# $Revision: 1.1 $
# $Source: /home/cvs/Template-Stash-HTML-Entities/lib/Template/Stash/HTML/Entities.pm,v $
# $Date: 2006/06/18 19:34:20 $
#
package Template::Stash::HTML::Entities;
use strict;
use warnings;
our $VERSION = '0.01';

use HTML::Entities;
use Template::Config;

use base ($Template::Config::STASH);

sub get {
    my $self = shift;

    my $result = $self->SUPER::get(@_);
    if ( ref $result ) {
        return $result;
    }

    return HTML::Entities::encode($result);
}

1;

__END__

=head1 NAME

Template::Stash::HTML::Entities - Encode the value automatically using HTML::Entities

=head1 VERSION

0.01

=head1 SYNOPSIS

    use Template::Stash::HTML::Entities;

    my $tt = Template->new({
        STASH => Template::Stash::HTML::Entities->new,
        ...
    });

or

    $Template::Config::STASH = 'Template::Stash::HTML::Entities';

=head1 DESCRIPTION

Encode the demanded value automatically.
When you need raw data (For example, using it for the textarea element),
you should decode it explicitly.

=head1 SUBROUTINES/METHODS

=head2 get

When the value is not a reference, it returns the encoded value.

=head1 DIAGNOSTICS

=head1 CONFIGURATION AND ENVIRONMENT

=head1 DEPENDENCIES

L<Template::Stash>, L<HTML::Entities>

=head1 INCOMPATIBILITIES

=head1 BUGS AND LIMITATIONS

Please report any bugs or feature requests to
C<bug-template-stash-html-entities@rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Template-Stash-HTML-Entities>.
I will be notified, and then you'll automatically be notified of progress on
your bug as I make changes.

You can find documentation for this module with the perldoc command.

    perldoc Template::Stash::HTML::Entities

You can also look for information at:

=over 4

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Template-Stash-HTML-Entities>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Template-Stash-HTML-Entities>

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Template-Stash-HTML-Entities>

=item * Search CPAN

L<http://search.cpan.org/dist/Template-Stash-HTML-Entities>

=back

=head1 AUTHOR

Hironori Yoshida, C<< <yoshida@cpan.org> >>

=head1 LICENSE AND COPYRIGHT

Copyright 2006 Hironori Yoshida, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut
