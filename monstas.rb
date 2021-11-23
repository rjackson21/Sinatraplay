require "sinatra"
require "erb"

get "/" do 
    "OMG, hello Ruby Monstas"
end

get "/signup" do 
    "Here you can sign up for the next beginners course"
end

get "/signin" do 
    "Signing In"
end

get '/monstas/:name' do
    erb "<h1>Hello <%= name %></h1>", { :locals => { :name => params[:name] } }
  end


