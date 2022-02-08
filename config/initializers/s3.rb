require 'aws-sdk-v1'

AWS::S3::Base.establish_connection!(
 :secret_access_key => ENV['api_key']
)