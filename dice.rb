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

get ("/dice/2/6") do 
  first_die = rand(1.6)
  second_die = rand(1..6)
  sum = first_die + second_die

  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."

  get ("/dice/2/10") do 
    first_die = rand(1.10)
    second_die = rand(1..10)
    sum = first_die + second_die
  
    outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."

    get ("/dice/2/20") do 
      first_die = rand(1.20)
      second_die = rand(1..20)
      sum = first_die + second_die
    
      outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."

     get ("/dice/5/4") do 
      first_die = rand(1.4)
      second_die = rand(1..4)
      sum = first_die + second_die
    
      outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
  "<h1>Dice Roll</h1>
    <p>#{outcome}</p>"
end
