class schedule {
schedule { 'hourly':
  period => hourly,
  repeat => 3,
}

exec { '/user/local/bin/puppet agent -t':
  schedule => 'everyday',
}
}