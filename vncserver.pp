class vncserver{
package { 'tigervnc-server': 
ensure => installed,
}
exce { 'vncserver; 12345; 12345; 12345; 12345; 12345' : 
path => ['/usr/bin','/usr/sbin','/usr/local/bin'],
}
}