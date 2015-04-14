class engine::tools {
    require server-utils::packages
    package { 'gcc-c++':
        ensure => installed,
        allow_virtual => false,
    }
    package { 'gdb':
        ensure => installed,
        allow_virtual => false,
    }
    package { 'gcc':
        ensure => installed,
        allow_virtual => false,
    }
	file { '/root/log.vim':
		owner => root, group => root, mode => 644,
        ensure => present,
        source => '/root/engine-tools/log.vim',
    }
	file { '/root/.monitor':
		owner => root, group => root, mode => 647,
        ensure => present,
        source => '/root/engine-tools/.monitor',
    }
    file { '/root/Py_Sdk_Qe/sdk_connect.py':
		owner => root, group => root, mode => 755,
        ensure => present,
        content => template('engine/sdk_connect.erb'),
	}
}
