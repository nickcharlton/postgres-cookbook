name             'postgres'
maintainer       'Nick Charlton'
maintainer_email 'nick@nickcharlton.net'
license          'MIT'
description      'Provides for the installation of Postgres\'s client libraries, '\
  'server and configuration.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

# we're working with the custom APT repostories
supports 'debian'
supports 'ubuntu'

