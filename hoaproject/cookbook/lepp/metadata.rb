name             'lepp'
maintainer       'Pierre Tomasina'
maintainer_email 'tomasina@plab.io'
license          'All rights reserved'
description      'Installs/Configures LEPP'
long_description 'Installs/Configures LEPP'
version          '0.1.0'

supports         'debian', '>= 7.0.0'

depends          'runit', '~> 1.4.0'
depends          'apt'
depends 	     'postgresql', '~> 3.4.14'
