require 'sinatra'
require 'faker'

 get '/' do
  "Hello World"
 end

get '/pares' do
  @pares =[]
 (1..15).each  do |i| @pares << 2*i
  end

  erb :index
end

get '/impares' do
 @impares =[]
 (1..15).each do |i|
      @impares << (2*i-1)
 end
 erb :index
end
