#change conf file for 900 seconds runinterval(15mins )
class schedule{

augeas { 'interval_time' :
context => '/etc/puppetlabs/puppet/puppet.conf',
changes => [ 'set runiterval = 900', ]
}
}


schedule { 'hourly' :
period => hourly,
repeat => 3,
}
exec { 'sudo /usr/local/bin/puppet agent -t' :
		schedule => 'hourly',
		path => ['/usr/bin','/usr/sbin','/usr/local/bin'],
	}