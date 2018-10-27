  Deface::Override.new(
    :virtual_path => "spree/checkout/_payment",
    :name => "add_accept_terms_to_payment",
    :insert_top => "[data-hook='buttons']",
    :partial => "spree/frontend/checkout_accept_terms",
    :disabled => false
  )
