class pptp (
  $localip          = $pptp::params::autoupdate,
  $remoteip         = $pptp::params::config,
  $connections      = $pptp::params::connections,
  $ms_dns           = $pptp::params::ms_dns,
  $config_path      = $pptp::params::config_path,
  $options_path     = $pptp::params::options_path,
  $secrets_path     = $pptp::params::secrets_path,
  $config_template  = $pptp::params::config_template,
  $options_template = $pptp::params::options_template,
  $secrets_template = $pptp::params::secrets_template,
  $package_name     = $pptp::params::default_package_name
) inherits pptp::params {

  validate_absolute_path($config_path)
  validate_string($config_template)
  validate_absolute_path($options_path)
  validate_string($options_template)
  validate_absolute_path($secrets_path)
  validate_string($secrets_template)


  # Anchor this as per #8040 - this ensures that classes won't float off and
  # mess everything up.  You can read about this at:
  # http://docs.puppetlabs.com/puppet/2.7/reference/lang_containment.html#known-issues
  anchor { 'pptp::begin': } ->
  class { '::pptp::install': } ->
  class { '::pptp::config': } ~>
  class { '::pptp::service': } ->
  anchor { 'pptp::end': }

}
