ENV["RAILS_ENV"] = 'test'

require 'rails/application'

require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'capybara/rails'

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.filter_run focus: true
  config.run_all_when_everything_filtered = true

  config.mock_with :rspec
  config.order = :random

  # Automatically tag specs in specs/decorators as type: :decorator
  config.include Rails.application.routes.url_helpers
end
