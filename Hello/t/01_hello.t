use Test::More;

use_ok( 'Hello' );
is( 
	Hello::Hello( 'R U OK?' ),
	"Hello R U OK?",
	'Hello R U OK?');

done_testing();
