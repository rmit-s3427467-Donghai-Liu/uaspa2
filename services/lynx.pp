class dia2code {
package { 'dia2code' :
		ensure => present,
}
    service { "dia2code":
        ensure    => running,
        hasstatus => true,
        require   => Package["dia2code"],
    }
}
