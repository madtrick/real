class User < ActiveRecord::Base
  before_create :create_token

  def create_token
    begin
      self.token = SecureRandom.hex
    end while self.class.exists?(token: token)
  end
end
