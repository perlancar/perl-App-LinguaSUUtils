package App::LinguaSUUtils;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use App::LinguaCommonUtils qw(%arg_words %arg_nums);

our %SPEC;

$SPEC{num_to_word} = {
    v => 1.1,
    summary => 'Convert number (123) to word ("saratus dua puluh tilu")',
    'x.no_index' => 1,
    args => {
        %arg_nums,
    },
    result_naked => 1,
};
sub num_to_word {
    require Lingua::SU::Nums2Words;

    my %args = @_;

    [map {Lingua::SU::Nums2Words::nums2words($_)} @{ $args{nums} }];
}

1;
# ABSTRACT: Command-line utilities related to the Sundanese language

=for Pod::Coverage .+

=head1 SYNOPSIS

This distribution provides the following command-line utilities:

#INSERT_EXECS_LIST


=head1 DESCRIPTION

This distribution will become a collection of CLI utilities related to the
Sundanese language. Currently it contains very little and the collection will be
expanded in subsequent releases.


=head1 SEE ALSO

=cut
