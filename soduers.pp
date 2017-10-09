class sudoers {
	augeas {
		 context => "/files/etc/sudoers",
  changes => [
    "set spec[user = 'becca']/user joe",
    "set spec[user = 'becca']/host_group/host ALL",
    "set spec[user = 'becca']/host_group/command ALL",
    "set spec[user = 'becca']/host_group/command/runas_user ALL",
  ],
	}
}