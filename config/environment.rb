ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require 'active_record'
require 'rake'

Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}
Dir[File.join(File.dirname(__FILE__), "../lib/support", "*.rb")].each {|f| require f}

connection_details = YAML::load(File.open('config/database.yml'))
ActiveRecord::Base.establish_connection(connection_details)


require_all 'app'
