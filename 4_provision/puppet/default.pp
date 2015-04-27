package {'nginx':
}
->
service {'nginx':
  ensure => "running",
}