class vncserver {
package { 'vncserver' :
		ensure => present,
}
    service { "vncserver":
        ensure    => running,
        hasstatus => true,
        require   => Package["vncserver"],
    }
}
