#!/usr/bin/env perl
use strict;
use warnings;

use lib qw(..);
use JSON qw( );
use Data::Dumper;
use File::Find;


find( \&check_for_json_file, '.' );

sub check_for_json_file {
    my ( $filename ) = ( $_ );

    if ( $filename =~ /\.json$/ ) {
        process_json( $filename );
    }
}

sub process_json {
    my ( $filename ) = ( $_ );

    print "Checking $filename...\n";
    my $json_text = do {
        open( my $json_fh, "<:encoding(UTF-8)", $filename)
            or die("Can't open \$filename\": $!\n");
        local $/;
        <$json_fh>
    };

    my $json = JSON->new();
    my $data = $json->decode( $json_text );

    #print STDERR Dumper( $data);
}
