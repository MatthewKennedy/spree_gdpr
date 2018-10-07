class AddGdprColumnsToSpreeUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_users, :allows_user_preference_cookies, :boolean, default: true
    add_column :spree_users, :allows_marketing_cookies, :boolean, default: false
    add_column :spree_users, :allows_analytics_cookies, :boolean, default: true
    add_column :spree_users, :accepts_marketing_emails, :boolean, default: false
    add_column :spree_users, :accepts_terms_and_conditions, :boolean, default: false
  end
end
