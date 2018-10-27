Spree::Core::Engine.add_routes do
  put "/update_gdpr", controller: "users", action: "update_gdpr", as: :update_gdpr
  put "/update_marketing_preferences", controller: "checkout", action: "update_marketing_preferences", as: :update_marketing_preferences
end
