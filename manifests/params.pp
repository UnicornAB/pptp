class pptp::params {

  $localip          = '10.0.0.1'
  $remoteip         = '10.0.0.100-200'
  $connections      = '100'
  $ms_dns           = ['8.8.8.8', '8.8.4.4']
  $config_path      = '/etc/pptpd.conf'
  $options_path     = '/etc/ppp/pptpd-options'
  $secrets_path     = '/etc/ppp/chap-secrets'
  $config_template  = 'pptp/pptpd.conf.erb'
  $options_template = 'pptp/pptpd-options.erb'
  $secrets_template = 'pptp/chap-secrets.erb'
  $package_ensure   = present

  $default_package_name = ['pptpd']
  $default_service_name = 'pptpd'
}
