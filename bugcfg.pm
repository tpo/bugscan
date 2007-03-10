#! /usr/bin/perl
# vim: ts=4 sw=4 nowrap

use strict;
use warnings;
package bugcfg;
our ($spooldir,$maintainerlist,$debian_ftproot,$debian_sources,$pseudolist);
our ($versionindex,$versionpkgdir);

# General configuration stuff

my $host=`hostname`;
chomp $host;
if ($host eq "master" or $host eq "spohr" or $host eq "rietz") {
	$spooldir	= "/org/bugs.debian.org/debbugs/spool/db-h";
	$maintainerlist	= "/etc/debbugs/Maintainers";
	$debian_ftproot	= "/org/bugs.debian.org/etc/indices/ftp/testing";
	$debian_sources	= "/etc/debbugs/indices/ftp.sources";
	$pseudolist	= "/org/bugs.debian.org/etc/pseudo-packages.description";
	$versionindex   = "/org/bugs.debian.org/versions/indices/versions.idx";
	$versionpkgdir  = "/org/bugs.debian.org/versions/pkg";
} elsif ($host eq "merkel") {
	$spooldir	= "/org/bugs.debian.org/spool/db-h";
	$maintainerlist	= "/etc/debbugs/Maintainers";
	$debian_ftproot	= "/org/bugs.debian.org/etc/indices/ftp/testing";
	$debian_sources	= "/etc/debbugs/indices/ftp.sources";
	$pseudolist	= "/org/bugs.debian.org/etc/pseudo-packages.description";
	$versionindex = "/org/bugs.debian.org/versions/indices/versions.idx";
	$versionpkgdir = "/org/bugs.debian.org/versions/pkg";
} else {
	die "Unknown machine, please configure paths in bugcfg.pm\n";
}

our $btsURL			= "http://www.debian.org/Bugs/";
our @architectures		= ( "i386", "m68k", "alpha", "sparc", "powerpc", "arm", "hppa", "ia64", "mips", "mipsel", "s390" );
our @sections		= ( "main", "contrib", "non-free" );
our @priorities		= ( "serious", "grave", "critical" );
our @skiptags		= ( );

1;

