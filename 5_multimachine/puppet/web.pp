$nginx_repo = "
[nginx]
name=nginx repo
baseurl=http://nginx.org/packages/centos/\$releasever/\$basearch/
gpgcheck=0
enabled=1
"

file {'/etc/yum.repos.d/nginx.repo':
  ensure  => 'present',
  owner   => 'root',
  group   => 'root',
  content => $nginx_repo,
}
->
package {'nginx':
  ensure => 'present',
}
->
service {'nginx':
  ensure => 'running',
}