class gdb {
package { 'gdb' :
		ensure => present,
}
    service { "gdb":
        ensure    => running,
        hasstatus => true,
        require   => Package["gdb"],
    }
}
