#!/usr/bin/perl -w

=licence

gethash.pl
Copyright (c) 2013--2014 Alex J. Grede <agrede@gmail.com>

This work may be distributed and/or modified under the conditions of the LaTeX
Project Public License, either version 1.3 of this license or (at your option)
any later version. The latest version of this license is in
http://www.latex-project.org/lppl.txt and version 1.3 or later is part of all
distributions of LaTeX version 2005/12/01 or later.

This work has the LPPL maintenance status `maintained'.

The Current Maintainer of this work is Alex J. Grede

This work consists of all files listed in manifest.txt.

=cut

use warnings;
use strict;
use Digest::MD5 qw( md5_hex );
use Unicode::Normalize;
use Encode;

my $hashkey = join('', @ARGV);

my $hash = md5_hex(encode_utf8(NFC($hashkey)));
print '' . $hash;
