name 'phpmd'
maintainer 'David Joos'
maintainer_email 'development@davidjoos.com'
license 'MIT'
description 'Installs/Configures phpmd'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.0.6'

%w(debian ubuntu redhat centos fedora scientific amazon).each do |os|
  supports os
end

depends 'php'
depends 'composer'
depends 'pdepend'

recipe 'phpmd', 'Installs phpmd.'
recipe 'phpmd::composer', 'Installs phpmd using composer.'
recipe 'phpmd::pear', 'Installs phpmd using pear.'
recipe 'phpmd::phar', 'Installs phpmd using phar.'
