#: set ft=ruby

case node['platform_family']
when 'debian'
  default['php-dotdeb']['release_apt_codename'] = node['lsb']['codename']
end

default['php-dotdeb']['release_apt_codename'] = 'wheezy'
default['php-dotdeb']['ver'] = 'php55'
