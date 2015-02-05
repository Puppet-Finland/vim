#
# == Class: vim::install
#
# Install vim
#
class vim::install inherits vim::params {

    package { $::vim::params::package_name:
        ensure => installed,
        provider => $::os::params::package_provider,
    }
}
