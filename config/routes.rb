Rails.application.routes.draw do
    get("/", { :controller => "misc", :action => "homepage"})
    get("/flexible/square/:input", { :controller => "flexible", :action => "square"})
    
    get("/flexible/square_root/:input", { :controller => "flexible", :action => "square_root"})
    get("/flexible/payment/:interest/:years/:principal", { :controller => "flexible", :action => "payment"})
    get("/flexible/random/:start/:end", { :controller => "flexible", :action => "random"})
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
