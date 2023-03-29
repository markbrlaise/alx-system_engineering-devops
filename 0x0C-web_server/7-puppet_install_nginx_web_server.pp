# puppet manifest to install nginx

package { 'nginx':
  ensure => 'installed',
}

file { 'index.html':
  ensure  => 'present',
  content => 'Hello World!',
  path    => '/var/www/html/',
}

file_line { '# yyyyyy':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
}

service { 'nginx':
  ensure  => 'running',
}
