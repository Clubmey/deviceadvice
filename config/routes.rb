Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "reviews#index"
  # Routes for the Category resource:

  # CREATE
  get("/categories/new", { :controller => "categories", :action => "new_form" })
  post("/create_category", { :controller => "categories", :action => "create_row" })

  # READ
  get("/categories", { :controller => "categories", :action => "index" })
  get("/categories/:id_to_display", { :controller => "categories", :action => "show" })

  # UPDATE
  get("/categories/:prefill_with_id/edit", { :controller => "categories", :action => "edit_form" })
  post("/update_category/:id_to_modify", { :controller => "categories", :action => "update_row" })

  # DELETE
  get("/delete_category/:id_to_remove", { :controller => "categories", :action => "destroy_row" })

  #------------------------------

  # Routes for the Company resource:

  # CREATE
  get("/companies/new", { :controller => "companies", :action => "new_form" })
  post("/create_company", { :controller => "companies", :action => "create_row" })

  # READ
  get("/companies", { :controller => "companies", :action => "index" })
  get("/companies/:id_to_display", { :controller => "companies", :action => "show" })

  # UPDATE
  get("/companies/:prefill_with_id/edit", { :controller => "companies", :action => "edit_form" })
  post("/update_company/:id_to_modify", { :controller => "companies", :action => "update_row" })

  # DELETE
  get("/delete_company/:id_to_remove", { :controller => "companies", :action => "destroy_row" })

  #------------------------------

  # Routes for the Device resource:

  # CREATE
  get("/devices/new", { :controller => "devices", :action => "new_form" })
  post("/create_device", { :controller => "devices", :action => "create_row" })
  post("/create_device_from_category", { :controller => "devices", :action => "create_row_from_category" })
  post("/create_device_from_company", { :controller => "devices", :action => "create_row_from_company" })

  # READ
  get("/devices", { :controller => "devices", :action => "index" })
  get("/devices/:id_to_display", { :controller => "devices", :action => "show" })

  # UPDATE
  get("/devices/:prefill_with_id/edit", { :controller => "devices", :action => "edit_form" })
  post("/update_device/:id_to_modify", { :controller => "devices", :action => "update_row" })

  # DELETE
  get("/delete_device/:id_to_remove", { :controller => "devices", :action => "destroy_row" })
  get("/delete_device_from_category/:id_to_remove", { :controller => "devices", :action => "destroy_row_from_category" })
  get("/delete_device_from_company/:id_to_remove", { :controller => "devices", :action => "destroy_row_from_company" })

  #------------------------------

  # Routes for the Review resource:

  # CREATE
  get("/reviews/new", { :controller => "reviews", :action => "new_form" })
  post("/create_review", { :controller => "reviews", :action => "create_row" })
  post("/create_review_from_device", { :controller => "reviews", :action => "create_row_from_device" })

  # READ
  get("/reviews", { :controller => "reviews", :action => "index" })
  get("/reviews/:id_to_display", { :controller => "reviews", :action => "show" })

  # UPDATE
  get("/reviews/:prefill_with_id/edit", { :controller => "reviews", :action => "edit_form" })
  post("/update_review/:id_to_modify", { :controller => "reviews", :action => "update_row" })

  # DELETE
  get("/delete_review/:id_to_remove", { :controller => "reviews", :action => "destroy_row" })
  get("/delete_review_from_device/:id_to_remove", { :controller => "reviews", :action => "destroy_row_from_device" })
  get("/delete_review_from_commenter/:id_to_remove", { :controller => "reviews", :action => "destroy_row_from_commenter" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
