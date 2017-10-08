class package{

package { 'vim' :
		ensure => present,
}


package { 'vncserver' : 
		ensure => present,
}
    service { "vncserver":
        ensure    => running,
        hasstatus => true,
        require   => Package["vncserver"],
    }
package { 'tmux' : 
		ensure => present,
}
    service { "vncserver":
        ensure    => running,
        hasstatus => true,
        require   => Package["tmux"],
    }
package { 'dia2code' : 
		ensure => present,
}
    service { "dia2code":
        ensure    => running,
        hasstatus => true,
        require   => Package["dia2code"],
    }
package { 'lynx' : 
		ensure => present,
}
    service { "lynx":
        ensure    => running,
        hasstatus => true,
        require   => Package["lynx"],
    }
package { 'gcc' : 
		ensure => present,
}
    service { "gcc":
        ensure    => running,
        hasstatus => true,
        require   => Package["gcc"],
    }
package { 'gdb' : 
		ensure => present,
}
    service { "gdb":
        ensure    => running,
        hasstatus => true,
        require   => Package["gdb"],
    }
package { 'cgdb' : 
		ensure => present,
}
   service { "cgdb":
        ensure    => running,
        hasstatus => true,
        require   => Package["cgdb"],
    }
package { 'emacs' : 
		ensure => present,
}
   service { "emacs":
        ensure    => running,
        hasstatus => true,
        require   => Package["emacs"],
    }
package { 'sshfs' : 
		ensure => present,
}
   service { "sshfs":
        ensure    => running,
        hasstatus => true,
        require   => Package["sshfs"],
    }
package { 'apache' :
		ensure => present,
}

}