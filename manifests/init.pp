class sysctl {
	include sysctl::setup

	# Make an hiera lookup to call the define
	$sysctls = hiera('sysctl::directives', {})
	create_resources('sysctl::directive', $sysctls)
}
