Deface::Override.new(
    :virtual_path => "spree/checkout/_address",
    :name => "add_accept_marketing_to_checkout",
    :insert_after => "[data-hook='save_user_address']",
    :partial => "frontend/checkout_marketing_email_subscribe",
    :disabled => false
  )
