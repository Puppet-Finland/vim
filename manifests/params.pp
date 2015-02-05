#
# == Class: vim::params
#
# Defines some variables based on the operating system
#
class vim::params {

    include os::params

    case $::osfamily {
        'RedHat': {
            $package_name = 'vim-minimal'
        }
        'Debian': {
            $package_name = 'vim-tiny'
        }
        'FreeBSD': {
            $package_name = 'vim'
        }
        'windows': {
            $package_name = 'vim'
        }
        default: {
            fail("Unsupported OS: ${::osfamily}")
        }
    }
}
