package Mesos::JobScheduler::Job::Dependency;

use Moo;
use namespace::autoclean;
extends 'Mesos::JobScheduler::Job';

=head1 ATTRIBUTES

=head2 parent

=cut

has parent => (
    is       => 'ro',
    required => 1,
);

around TO_JSON => sub {
    my ($orig, $self) = @_;
    my $object = $self->$orig;
    $object->{parent} = $self->parent;
    return $object;
};

1;
