Spree::Core::Engine.add_routes do
  put "/update_gdpr", controller: "users", action: "update_gdpr", as: :update_gdpr
end
