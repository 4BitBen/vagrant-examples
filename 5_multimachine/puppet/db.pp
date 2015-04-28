$mongo_repo = "
[mongodb-org-3.0]
name=MongoDB Repository
baseurl=http://repo.mongodb.org/yum/redhat/\$releasever/mongodb-org/3.0/x86_64/
gpgcheck=0
enabled=1
"

file {'/etc/yum.repos.d/mongodb-org-3.0.repo':
  ensure  => 'present',
  owner   => 'root',
  group   => 'root',
  content => $mongo_repo,
}
->
package {'mongodb-org':
  ensure => 'present',
}
->
service {'mongod':
  ensure => 'running',
}