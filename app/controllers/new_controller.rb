class NewController < ApplicationController
  def square_form
      render("new/squareform.html.erb")
  end
  
  def square_root_form
      render("new/squarerootform.html.erb")
  end
  
  def payment_form
      render("new/paymentform.html.erb")
  end
  
  def random_form
      render("new/randomform.html.erb")
  end
end
