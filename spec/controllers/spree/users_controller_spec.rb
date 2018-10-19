require 'spec_helper'
require 'pry'

RSpec.describe Spree::UsersController, type: :controller do
  before :each do
    @user = create(:user)
    allow(controller).to receive(:spree_current_user).and_return(@user)
  end

  describe "PUT update_gdpr" do
    it "update only gdpr preferences" do
      put :update_gdpr, params: { user: {
        allows_user_preference_cookies: false,
        allows_marketing_cookies: true
      }}
      
      expect(@user.allows_user_preference_cookies).to be false  
      expect(@user.allows_marketing_cookies).to be true  
    end
  end
end
