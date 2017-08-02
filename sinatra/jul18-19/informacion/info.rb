require "sinatra"
require "faker"

get "/"do
  @poke = Faker::Pokemon.name
  @a = Faker::HeyArnold.location
  erb :index
end
