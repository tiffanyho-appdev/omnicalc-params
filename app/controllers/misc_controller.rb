class MiscController < ApplicationController
    def homepage
        render("/main.html.erb")
    end
end
