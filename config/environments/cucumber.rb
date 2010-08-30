
config.cache_classes = true
config.whiny_nils = true

config.action_controller.consider_all_requests_local = true
config.action_controller.perform_caching             = false

config.action_controller.allow_forgery_protection    = false

config.action_mailer.delivery_method = :test

config.gem 'factory_girl',            :lib => false, :version => "=1.3.2"
config.gem 'cucumber-rails',          :lib => false, :version => '=0.3.0'
config.gem 'database_cleaner',        :lib => false, :version => '=0.5.2'
config.gem 'capybara',                :lib => false, :version => '=0.3.9'

