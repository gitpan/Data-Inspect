use strict;
use warnings;
package Data::Inspect;
BEGIN {
  $Data::Inspect::AUTHORITY = 'cpan:LOGIE';
}

our $VERSION = '0.01';

use parent 'autobox';
use Data::Printer colored => 1, deparse => 1;

sub import {
  my $class = shift;

  $class->SUPER::import(
    ARRAY => 'Data::Inspect',
    HASH  => 'Data::Inspect',
    SCALAR  => 'Data::Inspect',
    CODE  => 'Data::Inspect',
  );
}

sub inspect {
  return Data::Printer::p(@_);
}

1;

__END__

=pod

=head1 NAME

Data::Inspect

=head1 VERSION

version 0.01

=head1 SYNOPSIS

    use Data::Inspect

    print qw(a b c)->inspect;

=head1 DESCRIPTION

A simple wrapper around Data::Printer via autobox.

=head1 NAME

Data::Inspect - Data::Printer but autoboxed

=head1 AUTHOR

Logan Bell <logie@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Logan Bell.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
