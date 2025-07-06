#
# Configures Nginx to add a custom HTTP header X-Served-By with the server's hostname using Puppet
#
class custom_http_response_header {
  package { 'nginx':
    ensure => installed,
  }

  service { 'nginx':
    ensure => running,
    enable => true,
    require => Package['nginx'],
  }

  file_line { 'add_x_served_by_header':
    path  => '/etc/nginx/sites-available/default',
    line  => '    add_header X-Served-By $hostname;',
    match => 'add_header X-Served-By',
    after => 'server_name _;',
    require => Package['nginx'],
    notify  => Service['nginx'],
  }
}

include custom_http_response_header
