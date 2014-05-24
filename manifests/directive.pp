# directive.pp

define sysctl::directive($value, $ensure = 'present') {
	include sysctl

	file { "/etc/sysctl.d/${name}.conf":
		ensure  => $ensure,
		content => "${name}=${value}\n",
		notify  => Service["procps"];
	}
}
