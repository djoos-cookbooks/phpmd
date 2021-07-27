name 'phpmd'
maintainer 'David Joos'
maintainer_email 'development@davidjoos.com'
license 'MIT'
description 'Installs/Configures phpmd'
version '0.1.0'

%w(debian ubuntu redhat centos fedora scientific amazon).each do |os|
  supports os
end

source_url 'https://github.com/djoos-cookbooks/phpmd'
issues_url 'https://github.com/djoos-cookbooks/phpmd/issues'

depends 'php'
depends 'composer'
depends 'pdepend'
