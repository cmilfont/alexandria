config.cache_classes = true

config.whiny_nils = true

config.action_controller.consider_all_requests_local = true
config.action_controller.perform_caching             = false
config.action_view.cache_template_loading            = true

config.action_controller.allow_forgery_protection    = false
config.action_mailer.delivery_method = :test

config.gem "rspec",            :version => "= 1.3.0",  :lib => false
config.gem "rspec-rails",      :version => "= 1.3.2",  :lib => false
config.gem "capybara",         :version => "= 0.3.9",  :lib => false

config.gem 'factory_girl',     :version => "= 1.3.2",  :lib => false
config.gem 'database_cleaner', :version => "= 0.5.2",  :lib => false
config.gem 'remarkable_rails', :version => "= 3.1.13", :lib => false

config.gem 'flog',             :version => "= 2.4.0",  :lib => false
config.gem 'metric_fu',        :version => '= 1.5.1',  :lib => 'metric_fu'

