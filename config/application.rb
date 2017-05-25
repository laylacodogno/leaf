require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Leaf
  class Application < Rails::Application
	config.i18n.available_locales = [:en, :'pt-BR']
	config.i18n.default_locale = 'pt-BR'
	config.time_zone = 'Brasilia'
	config.active_record.default_timezone = :local
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
