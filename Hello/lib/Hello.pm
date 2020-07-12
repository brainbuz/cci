use strict;
use warnings;
# ABSTRACT: turns baubles into trinkets

package Hello;

use 5.022;
use feature qw/postderef signatures/;
no warnings 'experimental';
use Sort::Hash;

sub Hello ( $msg ) {
	say "Hello $msg";
	return "Hello $msg";
}
1;
