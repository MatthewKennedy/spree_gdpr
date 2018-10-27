module Spree
  CheckoutController.class_eval do
    before_action :update_marketing_preferences, :update_terms_preferences, only: :update

    def update_marketing_preferences
      return unless params[:state] == 'address'
      @user ||= try_spree_current_user
      @user.update_attributes(email_marketing) if @user
    end

    def update_terms_preferences
      return unless params[:state] == 'payment'
      @user ||= try_spree_current_user
      @user.update_attributes(sales_terms) if @user
    end

    private

    def email_marketing
      params.require(:user).permit(:accepts_marketing_emails)
    end

    def sales_terms
      params.require(:user).permit(:accepts_terms_and_conditions)
    end

  end
end
