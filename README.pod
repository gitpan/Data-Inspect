use strict;
use warnings;
package Data::Inspect;

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

=head1 NAME

Data::Inspect - Data::Printer but autoboxed

=head1 SYNOPSIS

    use Data::Inspect

    print qw(a b c)->inspect;

=head1 DESCRIPTION

A simple wrapper around Data::Printer via autobox.

