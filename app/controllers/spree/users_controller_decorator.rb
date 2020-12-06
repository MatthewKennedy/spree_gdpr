module Spree
  module UsersControllerDecorator
    def update_gdpr
      @user ||= spree_current_user
      if @user.update_attributes(user_gdpr_params)
        respond_to do |format|
          format.html { redirect_to spree.account_url, notice: Spree.t(:account_gdpr_updated) }
          format.js
         end
      else
        render :edit
      end
    end

    private

    def user_gdpr_params
      params.require(:user).permit(:allows_user_preference_cookies, :allows_marketing_cookies, :allows_analytics_cookies, :accepts_marketing_emails, :accepts_terms_and_conditions)
    end
  end
end

::Spree::UsersController.prepend ::Spree::UsersControllerDecorator if ::Spree::UsersController.included_modules.exclude?(::Spree::UsersControllerDecorator)
