# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

AWS::S3::Base.establish_connection!(
 :secret_access_key => ENV['api_key']
)

run Rails.application
