class AddGdprColumnsToSpreeUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_users, :allows_user_preferance_cookies, :boolean, default: true
    add_column :spree_users, :allows_marketing_cookies, :boolean, default: false
    add_column :spree_users, :allows_analytic_cookies, :boolean, default: true
    add_column :spree_users, :accepts_marketing_emails, :boolean, default: false
    add_column :spree_users, :accepts_news_updates_emails, :boolean, default: false
    add_column :spree_users, :accepts_store_terms_and_conditions, :boolean, default: false
  end
end
