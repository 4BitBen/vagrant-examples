$nginx_repo = "
[nginx]
name=nginx repo
baseurl=http://nginx.org/packages/centos/\$releasever/\$basearch/
gpgcheck=0
enabled=1
"

$nginx_conf = "
user  nginx;
worker_processes  1;

error_log  /var/log/nginx/error.log warn;
pid        /var/run/nginx.pid;


events {
    worker_connections  1024;
}


http {
    include       /etc/nginx/mime.types;
    default_type  application/octet-stream;

    log_format  main  '\$remote_addr - \$remote_user [\$time_local] \"\$request\" '
                      '\$status \$body_bytes_sent \"\$http_referer\" '
                      '\"\$http_user_agent\" \"\$http_x_forwarded_for\"';

    access_log  /var/log/nginx/access.log  main;

    sendfile        on;
    #tcp_nopush     on;

    keepalive_timeout  65;

    #gzip  on;

    upstream ping {
        server 192.168.50.51:3000;
        server 192.168.50.52:3000;
        server 192.168.50.53:3000;
    }

    server {
        listen 80;

        location / {
            proxy_pass http://ping/;
        }
    }
}
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
file {'/etc/nginx/nginx.conf':
  ensure  => 'present',
  owner   => 'root',
  group   => 'root',
  content => $nginx_conf,
}
->
service {'nginx':
  ensure => 'running',
}