Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end


  namespace :api do
    get "/flavors" => "flavors#index"
    get "/flavors/:id" => "flavors#show"
    post "/flavors" => "flavors#create"
    patch "/flavors/:id" => "flavors#update"
    delete "/flavors/:id" => "flavors#destroy"
  end

end
