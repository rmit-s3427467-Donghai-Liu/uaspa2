class sshfs {
package { 'sshfs' :
		ensure => installed,
}
    service { "sshfs":
        ensure    => running,
        hasstatus => true,
        require   => Package["sshfs"],
    }
}