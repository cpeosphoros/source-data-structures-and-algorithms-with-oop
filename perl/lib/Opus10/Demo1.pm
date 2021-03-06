#!/usr/bin/perl
#
#   Copyright (c) 2005 by Bruno R. Preiss, P.Eng.
#
#   $Author: brpreiss $
#   $Date: 2005/09/25 21:36:00 $
#   $RCSfile: Demo1.pm,v $
#   $Revision: 1.1 $
#
#   $Id: Demo1.pm,v 1.1 2005/09/25 21:36:00 brpreiss Exp $
#

use strict;

# @class Opus10::Demo1
# Provides demonstration program number 1.
package Opus10::Demo1;
use Opus10::DenseMatrix;
use Opus10::SparseMatrixAsArray;
use Opus10::SparseMatrixAsVector;
use Opus10::SparseMatrixAsLinkedList;

our $VERSION = 1.00;

# @function main
# Main program.
# @param args Command-line arguments.
# @return Zero on success; non-zero on failure.
sub main
{
    my (@args) = @_;
    my $status = 0;
    print "Demonstration program number 1.\n";
    Opus10::DenseMatrix::main(@args);
    Opus10::SparseMatrixAsArray::main(@args);
    Opus10::SparseMatrixAsVector::main(@args);
    Opus10::SparseMatrixAsLinkedList::main(@args);
    return $status;
}

use Cwd 'abs_path';
if (abs_path($0) eq abs_path(__FILE__))
{
    no strict 'refs';
    exit &{__PACKAGE__ . '::main'}(@ARGV);
}

1;
__DATA__

=head1 MODULE C<Opus10::Demo1>

=head2 CLASS C<Opus10::Demo1>

Provides demonstration program number 1.

=head3 FUNCTION C<main>

Main program.

=head4 Parameters

=over

=item C<args>

Command-line arguments.

=back

=head4 Return

Zero on success; non-zero on failure.

=cut

