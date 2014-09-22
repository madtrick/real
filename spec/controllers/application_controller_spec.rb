require 'rails_helper'

describe ApplicationController do
  describe "included modules" do
    it "includes ActionController::MimeResponds" do
      expect(ApplicationController.included_modules).to include(ActionController::MimeResponds)
    end
    it "includes ActionController::ImplicitRender" do
      expect(ApplicationController.included_modules).to include(ActionController::ImplicitRender)
    end
  end
end
