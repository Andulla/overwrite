# Class overwrite
#

class overwrite (
  $testfile = '/tmp/myconfigfile',
  )
  {
    if $::mycustomfact == 'yes'
    {
      $host = $::hostname,
    }
    else {
      $host = $::fqdn,
    }
  file { $testfile:
    ensure  => file,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => $host,
    }
  }
