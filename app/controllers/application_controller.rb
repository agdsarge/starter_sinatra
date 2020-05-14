class ApplicationController < Sinatra::Base

    set :views, "app/views"

    get "/" do
        erb :homepage
    end

    get "/about" do
        erb :about
    end

end
