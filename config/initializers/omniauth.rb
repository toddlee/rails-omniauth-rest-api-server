Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
    provider :facebook_access_token, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
end
