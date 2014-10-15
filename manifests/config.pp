
class pptp::config inherits pptp {

  file { $config_file:
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

  file { $secrets_path:
    ensure  => file,
    owner   => 0,
    group   => 0,
    mode    => '0644',
    content => template($secrets_template),
  }

}
