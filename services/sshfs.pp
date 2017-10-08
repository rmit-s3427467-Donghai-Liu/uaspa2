class sshfs {
package { 'sshfs' :
		ensure => present,
}
    service { "sshfs":
        ensure    => running,
        hasstatus => true,
        require   => Package["sshfs"],
    }
}
