Rails.application.routes.draw do
    get("/", { :controller => "misc", :action => "homepage"})
    
    # Flexibles
    get("/flexible/square/:input", { :controller => "flexible", :action => "square"})
    get("/flexible/square_root/:input", { :controller => "flexible", :action => "square_root"})
    get("/flexible/payment/:interest/:years/:principal", { :controller => "flexible", :action => "payment"})
    get("/flexible/random/:start/:end", { :controller => "flexible", :action => "random"})
    
    # Blank Forms
    get("/square/new", { :controller => "new", :action => "square_form"})
    get("/square_root/new", { :controller => "new", :action => "square_root_form"})
    get("/payment/new", { :controller => "new", :action => "payment_form"})
    get("/random/new", { :controller => "new", :action => "random_form"})
    
    # Results
    get("/square/results", { :controller => "calc", :action => "square_result"})
    get("/square_root/results", { :controller => "calc", :action => "square_root_result"})
    get("/payment/results", { :controller => "calc", :action => "payment_result"})
    get("/random/results", { :controller => "calc", :action => "random_result"})
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
