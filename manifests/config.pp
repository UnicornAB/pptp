#
class pptp::config inherits pptp {

  concat { $secrets_path:
    ensure => present
  }

  concat::fragment { 'secret_header':
    target => $secrets_path,
    content => template('pptp/chap-secrets-header.erb'),
    order => '01'
  }

  file { $config_path:
    ensure  => file,
    owner   => 0,
    group   => 0,
    mode    => '0644',
    content => template($config_template),
  }

  file { $options_path:
    ensure  => file,
    owner   => 0,
    group   => 0,
    mode    => '0644',
    content => template($options_template),
  }

}
