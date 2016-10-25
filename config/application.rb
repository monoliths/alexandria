# config/application.rb
require_relative 'boot'
require 'rails'
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'action_cable/engine'
require 'rails/test_unit/railtie'
# require 'carrierwave'
# require 'carrierwave/orm/activerecord'

Bundler.require(*Rails.groups)
module Alexandria
  class Application < Rails::Application
    config.api_only = true
  end
end
