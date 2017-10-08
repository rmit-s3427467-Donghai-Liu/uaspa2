

class { 'apache':
  default_vhost => false,
}

apache::vhost { 'user.example.com':
  port          => '80',
  docroot       => '/var/www/s3427467',
  docroot_owner => 'www-data',
  docroot_group => 'www-data',
}