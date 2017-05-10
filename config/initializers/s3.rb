CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => ENV['SIMPLE_KEY'] || "foo",
    :aws_secret_access_key  => ENV['SIMPLE_SECRET'] || "bar",
    :region                 => 'us-west-2'
  }
  config.fog_directory  = ENV['SIMPLE_BUCKET'] || "replace-me"
  config.fog_use_ssl_for_aws = true
end
