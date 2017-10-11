#install sshfs package
class sshfs {
package { 'sshfs' :
ensure => installed,
}
}
