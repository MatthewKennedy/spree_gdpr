module Spree
  CheckoutController.class_eval do
    before_action :update_marketing_preferences, only: :update

    def update_marketing_preferences
      @user ||= try_spree_current_user
      @user.update_attributes(user_gdpr_params) if @user
    end

    private

    def user_gdpr_params
      params.require(:user).permit(:accepts_marketing_emails)
    end
  end
end
