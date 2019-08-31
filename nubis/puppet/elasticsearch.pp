staging::file { 'aws-es-proxy':
  source => 'https://github.com/abutaha/aws-es-proxy/releases/download/v0.9/aws-es-proxy-0.9-linux-amd64',
  target => '/usr/local/bin/aws-es-proxy',
  owner  => 'root',
  group  => 'root',
  mode   => '0755',
}

systemd::unit_file { 'aws-es-proxy.service':
  source => 'puppet:///nubis/files/aws-es-proxy.systemd',
}
->service { 'aws-es-proxy':
  enable => true,
}