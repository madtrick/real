Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, Figaro.env.google_oauth_cliend_id, Figaro.env.google_oauth_secret, {
    provider_ignores_state: true
  }
end
