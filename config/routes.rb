Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope module: :v1, constraints: ApiVersion.new("v1"), defaults: { format: :json } do
    get "/twitter/:screen_name", to: "user_names#twitter"
    get "/linkedin", to: "user_names#linkedin"
    get "/github/:username", to: "user_names#github"
    match "/", to: "user_names#no_handle", via: :all
  end

  match "*invalid_endpoint", to: "application#invalid_endpoint", via: :all
end
