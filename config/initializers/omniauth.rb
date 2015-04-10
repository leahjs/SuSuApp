Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['consumer_key'], ENV['secret_key']
end
