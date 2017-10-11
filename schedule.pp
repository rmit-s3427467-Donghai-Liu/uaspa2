class schedule{

augeas { 'interval_time' :
        context => '/etc/puppetlabs/puppet/puppet.conf',
        changes => [
                'set runiterval = 900',
]
}
}
