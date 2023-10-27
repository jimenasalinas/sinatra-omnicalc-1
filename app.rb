require "sinatra"
require "sinatra/reloader"

get("/howdy") do
  "Hello there"
  erb(:hello)
end

get("/goodbye") do
  Goodbye

end

get("/square/new") do
  erb(:new_square_calc)
end

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end
