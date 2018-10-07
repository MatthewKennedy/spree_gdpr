if (Object.const_get("Spree::User") rescue false)
  Deface::Override.new(
    :virtual_path => "spree/users/show",
    :name => "address_book_account_my_orders",
    :insert_before => "[data-hook='account_my_orders'], #account_my_orders[data-hook]",
    :partial => "frontend/user_account_gdpr_settings",
    :disabled => false
  )
end
