Deface::Override.new(
  :virtual_path => 'spree/admin/shared/sub_menu/_configuration',
  :name => 'gdpr_settings_admin_configurations_menu',
  :insert_bottom => '[data-hook="admin_configurations_sidebar_menu"]',
  :original => '0faac568db7e03f5705d3f86553d21a58bda03aa',
  :text => '<%= configurations_sidebar_menu_item(Spree.t(:gdpr_settings),
   spree.admin_payment_methods_path) if can? :manage, Spree::PaymentMethod %>',
  :disabled => false
)
