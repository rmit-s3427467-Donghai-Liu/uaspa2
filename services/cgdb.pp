class cgdb {
package { 'cgdb' :
		ensure => present,
}
    service { "cgdb":
        ensure    => running,
        hasstatus => true,
        require   => Package["cgdb"],
    }
}
