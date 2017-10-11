class openssh{

  package { "openssh-server":
      ensure => "installed",
  }


augeas { "sshd_config":
  context => "/etc/ssh/sshd_config",
    changes => [
    "set PermitRootLogin no",
  ],
 }
}
