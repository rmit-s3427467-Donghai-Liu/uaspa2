class vim {
package { 'vim' :
		ensure => present,
}
    service { "vim":
        ensure    => running,
        hasstatus => true,
        require   => Package["vim"],
    }
}
