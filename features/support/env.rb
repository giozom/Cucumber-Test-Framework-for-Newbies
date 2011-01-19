require 'spec/expectations'
require 'uri'
require 'net/http'

require File.dirname(__FILE__) + '/../lib/configuration';
BASE_URL = Configuration["base_url"]

#CAPYBARA
require 'capybara/cucumber'
require 'capybara/session'
require 'features/support/patches/capybara'
Capybara.default_driver = :selenium
Capybara.run_server = false
Capybara.default_selector = :css
Capybara.default_wait_time = 10

#gizmo!!
require 'gizmo'
World(Gizmo::Helpers)

Gizmo.configure do |config|
  config.mixin_dir = File.dirname(__FILE__) + '/../pages'
end
