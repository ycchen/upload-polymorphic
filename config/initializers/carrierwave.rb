# if Rails.env.test? or Rails.env.cucumber?
  CarrierWave.configure do |config|
    config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => '03JMH8MWQAPC6CSJH8R2',       # required
    :aws_secret_access_key  => 'fxMePrKHO0ntPmt77rvFmwufrShr1u2SjkShJFwO'                     # required
    # :region                 => 'eu-west-1'              # optional, defaults to 'us-east-1'
    # :host                   => 's3.example.com',             # optional, defaults to nil
    # :endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
	  }
	config.fog_directory  = 'taipei1904'                     # required
	config.fog_public     =  true                            # optional, defaults to true
	config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
  end
# end