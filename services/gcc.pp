class gcc {
package { 'gcc' :
		ensure => present,
}
    service { "gcc":
        ensure    => running,
        hasstatus => true,
        require   => Package["gcc"],
    }
}
