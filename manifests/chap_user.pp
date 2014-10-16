#
define pptp::chap_user (
  $client = $name,
  $server = 'pptp',
  $secret = undef,
  $IP_addresses = '*'
) {

  concat::fragment { $name:
    target => $secrets_path,
    content => template($secrets_template),
    order => '01'
  }
}
