class server-utils::gits {
    require server-utils::packages
    vcsrepo { '/root/pudb':
        ensure   => present,
        provider => git,
        source   => "http://git.tiker.net/trees/pudb.git",
    }
    file { '/root/.bashrc':
		owner => root, group => root, mode => 755,
        ensure => present,
        source => 'puppet:///modules/server-utils/bashrc',
	}

}
