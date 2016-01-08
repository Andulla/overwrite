# Class overwrite
#

class overwrite::createfile (
  $shouldicreateit = 'yes',
  )
{
  if $shouldicreateit == 'yes'
  {
    file { '/tmp/shouldexist':
      ensure  => file,
      owner   => root,
      group   => root,
      mode    => '0644',
      content => 'Some content. Important is that the file exists.',
      }
  }
  else {
    file { '/tmp/shouldexist':
      ensure  => absent,
    }
  }
  }
