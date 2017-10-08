class ass2{
group { 'cars':
        ensure => present,
}
group{ 'trucks':
        ensure => present,
        gid => 5017467,
}
group{ 'sysadmin':
        ensure => present,
        gid => 50217467,
}
group{ 'ambulances':
        ensure => present,
        gid => 5037467,
}


user { 'becca':
        ensure => present,
        uid => '10017467',
        password => '$1$KMnaguwy$Qbh6YHOW3vRoRVjEJzhSf0',
        password_max_age => '99999',
        password_min_age => '0',
        home => '/home/becca',
        shell => '/bin/bash',
        group => ['sysadmin','cars'],
}

user { 'fred':
	ensure => presnet,
        uid => '10027467',
        password => '$1$KMnaguwy$Qbh6YHOW3vRoRVjEJzhSf0',
        password_max_age => '99999',
        password_min_age => '0',
        home => 'home/fred',
        groups => ['cars','truchs'],
        shell => '/bin/tcsh',
}

user { 'wilma':
        ensure => present,
        uid => '10037467',
        password => '$1$KMnaguwy$Qbh6YHOW3vRoRVjEJzhSf0',
        password_max_age => '99999',
        password_min_age => '0',
        home => '/home/wilma',
        groups => ['trucks','cars','ambulances']

}
}
