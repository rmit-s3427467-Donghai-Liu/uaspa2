#openssh service
class openssh{
package { "openssh-server":
ensure => "installed",
}
#start service
service { "sshd":
ensure => running,

}
#close root login 
augeas { "sshd_config":
context => "/etc/ssh/sshd_config",
changes => [
"set PermitRootLogin no",
],
}
}
