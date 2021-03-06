use lib qw(.);
use inc::Module::Install;

$ENV{'WITH_SUBDIRS'} = 'sbin,lib';
RTx                     ('RT-Action-NotifyGroup');
author                  ('Ruslan U. Zakirov <cubic@wildgate.miee.ru>');
license                 ('perl');
version_from            ('lib/RT/Action/NotifyGroup.pm');

requires                ('Getopt::Long');
requires                ('Storable');
recommends		('Pod::PlainText');

my ($lp) = $INC{'RT.pm'} =~ /^(.*)[\\\/]/;
my $lib_path = join( ' ', "$RT::LocalPath/lib", $lp );
substitute( { RT_LIB_PATH => $lib_path }, 'sbin/rt-notify-group-admin');


&WriteAll;
