ClauseLogicDocumentation::Application.routes.draw do

  get "endpoint/clats"

  get "endpoint/clauses"

  get "endpoint/indicators"

  get "endpoint/prescriptions"

  get "endpoint/procurement_documents"

  get "endpoint/regulations"

  get "rest/index"

  get "rest/overview"

  get "rest/endpoints"

  get "rest/resource_objects"

  get "rest/error_codes_responses"

  get "authentication" => "authentication#index"
  get "authentication/request_types" => "authentication#request_types"
  get "authentication/creating_a_signature" => "authentication#creating_a_signature"

  get "getting_started" => "getting_started#index"
  get "getting_started/create_procurement_document" => "getting_started#create_procurement_document"
  get "getting_started/specify_indicators" => "getting_started#specify_indicators"
  get "getting_started/specify_regulations" => "getting_started#specify_regulations"
  get "getting_started/launch_cl_gui" => "getting_started#launch_cl_gui"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'index#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
