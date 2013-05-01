require 'capybara'
require 'capybara/dsl'
require 'turnip/capybara'

Dir.glob("spec/features/support/*.rb") { |f| load f }
Dir.glob("spec/features/**/*_steps.rb") { |f| load f, true }

RSpec.configure do |config|
  config.include Capybara::DSL
end
