Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '147125267354-dbe525glo5mn7jmjnm1cf0hcub4igueh.apps.googleusercontent.com', 'c9a9xzn33Mk_N4mjck1fjof1', {
    provider_ignores_state: true
  }
end
