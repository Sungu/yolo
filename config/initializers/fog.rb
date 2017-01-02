CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJX3XVNEH42HOA65Q',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'projectyolo'                          # required

end