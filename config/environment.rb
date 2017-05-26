# Load the Rails application.
require_relative 'application'

# Load the app's custom environment variables here, before environments/*.rb
application_enviroment_variables = File.join(Rails.root, 'config', 'initializers', 'application_enviroment_variables.rb')
load(application_enviroment_variables) if File.exists?(application_enviroment_variables)

# Initialize the Rails application.
Rails.application.initialize!
