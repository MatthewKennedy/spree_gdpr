Deface::Override.new(
  :virtual_path => "spree/layouts/spree_application",
  :name => "add_identify_to_layout",
  :insert_bottom => "[data-hook='body']",
  :partial => "spree/frontend/identify",
  :disabled => false
)
