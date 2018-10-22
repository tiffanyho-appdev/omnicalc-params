class CalcController < ApplicationController
  def square_result
      @input = params.fetch("user_number").to_f
      @result = @input * @input
      render("results/squareresult.html.erb")
  end

  def square_root_result
      @input = params.fetch("user_number").to_f
      @result = @input ** 0.5
      render("results/squarerootresult.html.erb")
  end
  
  def payment_result
      @interest = params.fetch("user_APR").to_f
      @years = params.fetch("user_years").to_f
      @principal = params.fetch("user_principal").to_f
      
      @output = ( @interest / 1200 * @principal ) / ( 1 - (1 + (@interest / 1200))** - (@years * 12 ))
      
      render("results/paymentresult.html.erb")
  end
  
  def random_result
      @min = params.fetch("user_min").to_f
      @max = params.fetch("user_max").to_f
      @output = rand(@min..@max)
      render("results/randomresult.html.erb")
  end
end