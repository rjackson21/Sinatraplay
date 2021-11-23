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

#this block accepts an argument 
get "/monstas/:name" do
    ERB.new("<h1>Hello <%= params[:name] %></h1>").result(binding)
end


