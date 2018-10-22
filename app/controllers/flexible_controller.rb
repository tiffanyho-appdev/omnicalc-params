class FlexibleController < ApplicationController
  def square
      @target = params[:input]
      @output = @target**2
      render("flexible/square.html.erb")
  end
end
