RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|

  config.gem 'paperclip', :version => '=2.3.3', :source => 'http://gemcutter.org'
  config.gem 'will_paginate', :version => '~> 2.3.11', :source => 'http://gemcutter.org'
  config.gem 'sunspot', :lib => 'sunspot' , :version => '=1.0.3'
  config.gem 'sunspot_rails', :lib => 'sunspot/rails'  , :version => '=1.0.3'

  config.time_zone = 'UTC'

end

