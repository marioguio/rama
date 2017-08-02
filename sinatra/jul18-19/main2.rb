require 'sinatra'
require 'faker'

get '/'do
@nombre = params[:nombre].capitalize
erb :index
end

get'/pisos'do
 @pisos=params[:pisos].to_i
 erb :pisos
end

get "/areas/:lados" do
   @pisos=params[:lados].to_i
   if params.has_key? :ancho
      @ancho=params[:ancho].to_i
    else
      @ancho = 0
   end
  erb :area
end
