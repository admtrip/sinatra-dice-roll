# /dice.rb

require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

# Need this configuration for better_errors
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')


get "/" do
  <<-HTML
    <h1>Welcome to the Dice Roller</h1>
    <p>Click a link below to roll dice:</p>
    <ul>
      <li><a href="/dice/2/6">Roll 2 six-sided dice</a></li>
      <li><a href="/dice/2/10">Roll 2 ten-sided dice</a></li>
      <li><a href="/dice/1/20">Roll 1 twenty-sided die</a></li>
      <li><a href="/dice/5/4">Roll 5 four-sided dice</a></li>
    </ul>
  HTML
end

# Code for rolling 2 six-sided dice

get ("/dice/2/6") do 
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die

  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
end

# Code for rolling 2 ten-sided dice

get ("/dice/2/10") do 
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die
  
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
end

# Code for rolling 1 twenty-sided dice

get ("/dice/1/20") do 
  first_die = rand(1..20)
    
  outcome = "You rolled a #{first_die}."
end

# Code for rolling 5 four-sided dice

get ("/dice/5/4") do 
  first_die = rand(1..4)
	second_die = rand(1..4)
  third_die = rand(1..4)
  fourth_die = rand(1..4)
  sum = first_die + second_die + third_die + fourth_die
  
  outcome = "You rolled a #{first_die}, a #{second_die}, a #{third_die}, and a #{fourth_die} for a total of #{sum}."
end
