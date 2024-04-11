require "sinatra"
require "sinatra/reloader"

get("/") do

 erb(:homepage)
end

get("/rock") do
  @ourmove = "rock"
  moves = ["rock", "paper", "scissors"]
  @comp_moves = moves.sample
  if @comp_moves == "rock"
    @outcome = "tied"
  elsif @comp_moves == "paper"
    @outcome = "lost"
  else
    @outcome = "won"
  end

erb(:rock)
end

get("/paper") do
@ourmove = "paper"
  moves = ["rock", "paper", "scissors"]
  @comp_moves = moves.sample
  if @comp_moves == "rock"
    @outcome = "won"
  elsif @comp_moves == "paper"
    @outcome = "tied"
  else
    @outcome = "lost"
  end
  
  erb(:rock)
end

get("/scissors") do
  @ourmove = "scissors"
  moves = ["rock", "paper", "scissors"]
  @comp_moves = moves.sample
  if @comp_moves == "rock"
    @outcome = "lost"
  elsif @comp_moves == "paper"
    @outcome = "won"
  else
    @outcome = "tied"
  end
  erb(:rock)
end
