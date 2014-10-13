name             'icanhazdevops'
maintainer       'Justin Seubert'
maintainer_email 'justin.seubert@rackspace.com'
license          'All rights reserved'
description      'Installs/Configures icanhazdevops'
long_description 'Installs/Configures icanhazdevops'
version          '0.1.1'

%w(
  nginx
  vim
  screen
  python
  ruby
  gem_installer
  curl
  git
).each do |cookbook|
  depends cookbook
end
