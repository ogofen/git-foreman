class vdsm::monitor {
    require vdsm::packages
	file { '/root/vdsm.vim':
		owner => root, group => root, mode => 644,
        ensure => present,
        source => '/root/vdsm-tools/vdsm.vim',
    }
	file { '/root/.monitor':
		owner => root, group => root, mode => 647,
        ensure => present,
        source => '/root/vdsm-tools/.monitor',
    }
}
