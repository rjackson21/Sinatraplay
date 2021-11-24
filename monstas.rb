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
    template = "<h1>Hello <%= name %></h1>" 
    layout = "<html><body><%= yield %></body></html>"
    erb template, { :locals => params, :layout => layout }
end


