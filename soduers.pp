class sudoers {
	augeas { "sudoers":
		 context => "/files/etc/sudoers",
  changes => [
    "set spec[user = 'becca']/user joe",
    "set spec[user = 'becca']/host_group/host ALL",
    "set spec[user = 'becca']/host_group/command ALL",
    "set spec[user = 'becca']/host_group/command/runas_user ALL",
  ],
	}
	
	user { 'fred':
		ensure => present,
        uid => '10027467',
        password => '$1$KMnaguwy$Qbh6YHOW3vRoRVjEJzhSf0',
        password_max_age => '99999',
        password_min_age => '0',
        home => '/home/fred',
        groups => ['cars','trucks','wheel'],
        shell => '/bin/tcsh',
		managehome => true,
		comment     => 'foo',
}

}