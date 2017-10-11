class apache (String $version = 'installed') {
  package {'httpd':
    ensure => $version,

  }

  service {'httpd':
    ensure    => running,
  }

file{"/var/www/s3427467" :
	ensure => diretory,
	mode => 0755,
}

augeas {"httpd_conf" :
	context =>"/files/etc/httpd/conf",
	changes =>'set DocumentRoot "/var/www/s3427467"',
}
}