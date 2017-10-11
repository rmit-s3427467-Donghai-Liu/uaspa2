class package{

package { 'vim' :
                ensure => present,
}

    package { 'tmux' :
                ensure => installed,
}

    package { 'lynx' :
                ensure => installed,
}
    package { 'gcc' :
                ensure => installed,
}

package { 'gdb' :
                ensure => installed,
}

package { 'cgdb' :
                ensure => present,
}

package { 'emacs' :
                ensure => present,
}

package { 'gcc' :
                ensure => present,
}


exec { 'wget https://jaist.dl.sourceforge.net/project/dia2code/dia2code/0.8.3/dia2code-0.8.3-3.1.i586.rpm ; sudo rpm -Uvh dia2code-0.8.3-3.1.i586.rpm ; sudo rm dia2code-0.8.3-3.1.i586.rpm' :
 path => ['/usr/bin','/usr/sbin','/usr/local/bin'],

}
}

