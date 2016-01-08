# Class overwrite
#

class overwrite (
  $host = $::fqdn,
  $testfile = '/tmp/myconfigfile',
  )
  {
  file { $testfile:
    ensure  => file,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => $host,
    }
  }
