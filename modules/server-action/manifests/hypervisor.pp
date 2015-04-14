class server-action::hypervisor::standart {
    file { '/root/server-actions':
		owner => root, group => root, mode => 755,
        ensure => present,
        source => 'puppet:///modules/server-action/vdsm-actions',
	}
}
class server-action::hypervisor::glusterpack {
    package { 'glusterfs':
        ensure => installed,
        allow_virtual => false,
    }
    package { 'glusterfs-libs':
        ensure => installed,
        allow_virtual => false,
    }
    package { 'glusterfs-fuse':
        ensure => installed,
        allow_virtual => false,
    }
    package { 'glusterfs-rdma':
        ensure => installed,
        allow_virtual => false,
    }
    package { 'glusterfs-devel':
        ensure => installed,
        allow_virtual => false,
    }
    package { 'glusterfs-debuginfo':
        ensure => installed,
        allow_virtual => false,
    }
    package { 'glusterfs-api-devel':
        ensure => installed,
        allow_virtual => false,
    }
}
