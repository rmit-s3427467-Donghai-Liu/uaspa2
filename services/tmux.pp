class tmux {
package { 'tmux' :
		ensure => present,
}
    service { "tmux":
        ensure    => running,
        hasstatus => true,
        require   => Package["tmux"],
    }
}
