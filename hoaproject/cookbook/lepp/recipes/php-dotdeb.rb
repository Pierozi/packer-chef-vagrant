if not %w(squeeze wheezy sid lucid precise saucy trusty utopic).include? node['php-dotdeb']['release_apt_codename']
  raise "Not supported release by php-dotdeb apt repository"
end

file "remove old PHP dotdeb repo" do
  action :delete
  path "/etc/apt/sources.list.d/php-dotdeb-php*"
end

apt_repository "php-dotdeb-#{node['php-dotdeb']['ver']}" do
  uri "http://packages.dotdeb.org wheezy-#{node['php-dotdeb']['ver']}"
  components ['all']
end

execute "Import DotDeb Key" do
  command "wget -q http://www.dotdeb.org/dotdeb.gpg -O- | sudo apt-key add -"
  action :run
end

include_recipe 'apt'

package "php5-cli" do 
	action :upgrade
end
package "php5-fpm" do
        action :upgrade
end
package "php5-dev" do
        action :upgrade
end
package "php5-json" do
        action :upgrade
end
package "php5-pgsql" do
        action :upgrade
end
package "php5-sqlite" do
        action :upgrade
end

log "Installing php #{node['php-dotdeb']['ver']}"
