Rails.application.config.middleware.use OmniAuth::Builder do
  provider :splitwise, ENV['SPLITWISE_API_KEY'], ENV['SPLITWISE_API_SECRET']
end
