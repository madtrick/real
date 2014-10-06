require 'rails_helper'

describe SessionsController do
  describe ':filter_emails before_filter' do
    before :each do
      ENV['whitelisted_emails']     = 'valid@example.com'
      @request.env['omniauth.auth'] = OmniAuth::AuthHash.new({info: {email: 'invalid@example.com'}})
    end

    it 'returns Unauthorized status code to users with a non whitelisted email' do
      get :create, provider: :google
      expect(response.status).to be(401) #unauthorized
    end
  end
end
