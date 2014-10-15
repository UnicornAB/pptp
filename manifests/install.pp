#
class pptp::install inherits pptp {

  package { $package_name:
    ensure => $package_ensure,
  }

}
