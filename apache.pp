class apache (String $version = 'latest') {
  package {'httpd':
    ensure => $version, 
   
  }
  file {'/etc/httpd/httpd.conf':
    ensure  => file,
    owner   => 'root',
    content => template('/etc/httpd/conf/httpd.conf'), 
      }
file_line { 'doucroot':
  path  => '/etc/httpd/httpd.conf',
  line  => "DoucumentRoot '/var/ww/s3427467'",
  match => 'DoucumentRoot',
}
 
  service {'httpd':
    ensure    => running,
    enable    => true,
    subscribe => File['/etc/httpd/httpd.conf'],
  }
}