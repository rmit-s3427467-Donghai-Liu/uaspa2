#This is part 1, create user and groups
class ass2{
group { 'cars':
ensure => present,
}
group{ 'trucks':
ensure => present,
gid    => '5017467',
}
group{ 'sysadmin':
ensure => present,
gid    => 50217467,
}
group{ 'ambulances':
ensure => present,
gid    => 5037467,
}
user { 'becca':
ensure           => present,
uid              => '10017467',
password         => '$1$KMnaguwy$Qbh6YHOW3vRoRVjEJzhSf0',
password_max_age => '99999',
password_min_age => '0',
home             => '/home/becca',
shell            => '/bin/bash',
groups           => ['sysadmin','cars'],
managehome       => true,
comment          => 'foo',
}
user { 'fred':
ensure           => present,
uid              => '10027467',
password         => '$1$KMnaguwy$Qbh6YHOW3vRoRVjEJzhSf0',
password_max_age => '99999',
password_min_age => '0',
home             => '/home/fred',
groups           => ['cars','trucks','wheel'],
shell            => '/bin/tcsh',
managehome       => true,
comment          => 'foo',
}
user { 'wilma':
ensure           => present,
uid              => '10037467',
password         => '$1$KMnaguwy$Qbh6YHOW3vRoRVjEJzhSf0',
password_max_age => '99999',
password_min_age => '0',
home             => '/home/wilma',
groups           => ['trucks','cars','ambulances'],
managehome       => true,
comment          => 'foo',
}
file { '/home/fred' :
ensure           => 'directory',
owner            => 'fred',
}
file { '/home/becca' :
ensure           => 'directory',
owner            => 'becca',
}
file { '/home/wilma' :
ensure           => 'directory',
owner            => 'wilma',
}
file { '/home/wilma/.ssh' :
ensure           => 'directory',
owner            => 'wilma',
}
ssh_authorized_key { 'wilma@sshkey.com':
user             => 'wilma',
type             => 'ssh-rsa',
key              => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAy5mtOAMHwA2ZAIfW6Ap70r+I4EclYHEec5xIN59ROUjss23Skb1OtjzYpVPaPH8mSdSmsN0JHaBLiRcu7stl4O8D8zA4mz/vw32yyQ/Kqaxw8l0K76k6t2hKOGqLTY4aFbFISV6GDh7MYLn8KU7cGp96J+caO5R5TqtsStytsUhSyqH+iIDh4e4+BrwTc6V4Y0hgFxaZV5d18mLA4EPYKeG5+zyBCVu+jueYwFqM55E0tHbfiaIN9IzdLV+7NEEfdLkp6w2baLKPqWUBmuvPF1Mn3FwaFLjVsMT3GQeMue6b3FtUdTDeyAYoTxrsRo/WnDkS6Pa3YhrFwjtUqXfdaQ==',
}
}
