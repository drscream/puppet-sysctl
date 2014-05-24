class sysctl::setup {
	service { "procps":
		ensure => running,
		subscribe => File["/etc/sysctl.d"],
		hasrestart => true,
		hasstatus => true
	}

	file { "/etc/sysctl.d":
		ensure  => directory,
		recurse => true,
		force   => true,
		notify  => Service["procps"];
	}
}
