Deface::Override.new(
  :virtual_path => "spree/admin/users/_lifetime_stats",
  :name => "add_gdpr_under_lifetime_stats",
  :insert_after => "[data-hook='admin_user_lifetime_stats']",
  :original => 'b9f3ea1e30e19d2a4a4f86785b7ba1c2cd6157e5',
  :partial => "spree/admin/gdpr",
  :disabled => false
)
