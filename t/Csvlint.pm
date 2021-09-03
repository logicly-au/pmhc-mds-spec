package Csvlint;

use File::Copy;
use FindBin qw( $Bin );

=head1 DESCRIPTION

Testing organisations schema

=cut

sub run_csvlint {
    my ( $infile, $csvfile ) = ( @_ );

    copy( "$Bin/$infile", "data/$csvfile" ) or die "Copy of $Bin/$infile to data/$csvfile failed: $!";
    my $output = `csvlint data/$csvfile --schema=metadata.json`;
    print STDERR "$output\n";
#    unlink( "data/$csvfile" );
    return $output;
}

1;
