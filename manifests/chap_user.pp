#
define pptp::chap_user (
  $client = $name,
  $server = 'pptpd',
  $secret = undef,
  $IP_addresses = '*'
) {

  concat::fragment { $name:
    target => $pptp::secrets_path,
    content => template($pptp::secrets_template),
    order => '10'
  }
}
