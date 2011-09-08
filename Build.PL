
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "File::Find" => 0,
    "File::Path" => 0,
    "File::Temp" => 0,
    "Module::Build" => "0.3601",
    "Moose::Autobox" => 0,
    "Test::DZil" => 0,
    "Test::More" => "0.96",
    "Test::Output" => 0,
    "autodie" => 0
  },
  "configure_requires" => {
    "ExtUtils::MakeMaker" => "6.30",
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Release tests for minimum required versions",
  "dist_author" => [
    "Mike Doherty <doherty\@cpan.org>",
    "Marcel Gr\303\274nauer <marcel\@cpan.org>"
  ],
  "dist_name" => "Dist-Zilla-Plugin-Test-MinimumVersion",
  "dist_version" => "v2.0.1",
  "license" => "perl",
  "module_name" => "Dist::Zilla::Plugin::Test::MinimumVersion",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Dist::Zilla::Plugin::InlineFiles" => 0,
    "Moose" => 0,
    "Test::MinimumVersion" => 0,
    "perl" => "5.008",
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;