# /dice.rb

require "sinatra"
require "sinatra/reloader"

get "/" do
  "Hello World"
end

get("/zebra") do
  "We must add a route to end each path we want to support"
end 

get ("/giraffe")do
  "Hopefully this shows up without having to restart the server"
end
