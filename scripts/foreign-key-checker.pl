#!/usr/bin/env perl
use strict;
use warnings;

use Data::Dumper;
use File::Find;


my $start_dir = `pwd`;
chomp( $start_dir );

my $top_metadata_file = $start_dir . "/metadata.json";

find( \&find_for_metadata_files, '.' );

sub find_for_metadata_files {
    my ( $filename ) = ( $_ );

    if ( $filename =~ /\-metadata.json$/ ) {
        process_metadata( $filename );
    }
}

sub process_metadata {
    my ( $filename ) = ( $_ );

    print "Checking $filename...\n";
    my @resources = split( '\n', `cat $filename | grep resource | cut -d: -f2 | sort | uniq` );

   foreach my $resource ( @resources ) {
       ( $resource ) = ( $resource =~ m/\"(.*)\",/ );

       if ( $resource !~ /^data\// ) {
           if ( !`grep $resource $top_metadata_file` ) {
               print  "$resource is MISSING.\n";
           }
       }
   }
}
