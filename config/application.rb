require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(:default, Rails.env) if defined?(Bundler)

module Crazytrip2
  
  class Application < Rails::Application

    config.filter_parameters += [:password]
  
  end
  
end
