require 'byebug'
require 'dynamoid'
require 'dotenv/load'

module SampleDynamoid

  def self.start
    byebug
    ServiceRegistry.create(name: 'daniel2', number: 3)
    byebug
    byebug
  end

  def self.setup_aws
    Aws.config.update(
      region: 'us-west-1',
      credentials: Aws::Credentials.new(
        ENV['AWS_KEY'],
        ENV['AWS_SECRET']
      )
    )
  end

  def self.setup_dynamoid
    Dynamoid.configure do |config|
      config.namespace = ''
    end
  end
end

SampleDynamoid.setup_aws
SampleDynamoid.setup_dynamoid

require_relative 'lib/dynamoid_table_search'
require_relative 'app/dynamo_models/service_registry'
require_relative 'app/dynamo_models/user'
require_relative 'lib/dynamoid_patch'

SampleDynamoid.start
