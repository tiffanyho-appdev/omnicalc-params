class FlexibleController < ApplicationController
  def square
      @target = params[:input].to_f
      @output = @target ** 2
      render("flexible/square.html.erb")
  end
  
  def square_root
      @target = params[:input].to_f
      @output = @target ** 0.5
      render("flexible/squareroot.html.erb")
  end
  
  def payment
      @interest = params[:interest].to_f / 100
      @years = params[:years].to_f
      @principal = params[:principal].to_f
      
      @output = ( @interest / 1200 * @principal ) / ( 1 - (1 + (@interest / 1200))** - (@years * 12 ))
      
      render("flexible/payment.html.erb")
  end
  
  def random
      @start = params[:start].to_f
      @end = params[:end].to_f
      @output = rand(@start..@end)
      render("flexible/random.html.erb")
  end
end
