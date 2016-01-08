# Class overwrite
#


class overwrite::createfile (
  $content = 'yes',
  )
  {
    file { '/tmp/shouldexist':
      ensure  => file,
      owner   => root,
      group   => root,
      mode    => '0644',
      content => $content,
      }
  }
