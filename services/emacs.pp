class emacs {
package { 'emacs' :
		ensure => present,
}
    service { "emacs":
        ensure    => running,
        hasstatus => true,
        require   => Package["emacs"],
    }
}
