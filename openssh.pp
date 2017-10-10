class openssh{
	
  package { "openssh-server": 
      ensure => "installed",
  }
 
    service { "ssh":
        ensure    => running,
        hasstatus => true,
        require   => Package["openssh-server"],
    }
 
augeas { "sshd_config":
  context => "/etc/ssh/sshd_config",
    changes => [
    "set PermitRootLogin no",
  ],
 }
}