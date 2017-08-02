require 'sinatra'

faheit = { name:"Daniel Gabriel Fahrenheit",
           foto:"https://www.biografiasyvidas.com/biografia/f/fotos/fahrenheit.jpg",
           bio:"Daniel Gabriel Fahrenheit fue un físico, ingeniero y soplador de vidrio de origen alemán, célebre entre otras cosas por haber desarrollado el termómetro de mercurio y la escala Fahrenheit de temperatura.",
           link:"https://es.wikipedia.org/wiki/Daniel_Gabriel_Fahrenheit",
           medida:"fahrenheit"}
cel = { name:"Anders Celsius",
        foto:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnclLwVT6SiAJBllvqgey-eJJyOo0YQXgPsaMXeJFF6VH7Ce_mng",
        bio:"Anders Celsius fue un físico y astrónomo sueco. Es conocido por idear la escala de temperatura centígrada en la que se basa el sistema utilizado en la actualidad, que se denomina 'Celsius' en su memoria.",
        link:"https://www.google.com.co/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=0ahUKEwj468fa2qXVAhVq54MKHaSpCIwQFgglMAA&url=https%3A%2F%2Fes.wikipedia.org%2Fwiki%2FAnders_Celsius&usg=AFQjCNF3v6f_EVUk1qa_z5LXfX3UDb2brg",
        medida:"celsius"}
kel = { name:"William Thomson",
        foto:"http://glasgowuk.org/images/WilliamThomsonBaronKelvin1.jpg",
        bio:"William Thomson, Lord Kelvin, OM, GCVO, PC, FRS fue un físico y matemático británico. Lord Kelvin destacó por sus importantes trabajos en el campo de la termodinámica y la electricidad, gracias a sus profundos conocimientos de análisis matemático.",
        link:"https://www.google.com.co/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=0ahUKEwjy_MGS36XVAhVq1oMKHZNxDqMQFgglMAA&url=https%3A%2F%2Fes.wikipedia.org%2Fwiki%2FWilliam_Thomson&usg=AFQjCNHRdmnU3QavFne4D2AARRpb68tKmg",
        medida:"kelvin"}

get '/' do
  erb :home
end

post '/result'do
 if params.has_key? :celsius
   @dato =params[:celsius].to_i
   @escala="celsius"
 elsif params.has_key? :kelvin
   @dato =params[:kelvin].to_i
   @escala="kelvin"
 elsif params.has_key? :fahrenheit
   @dato =params[:fahrenheit].to_i
   @escala="fahrenheit"
 else
   @dato =0
   @escala= "error"
 end
  erb :result
end

get '/escala/:escala' do
  if params[:escala]=="kelvin"
    @ifo = kel
  elsif params[:escala]=="celsius"
   @ifo = cel
 elsif params[:escala]=="fahrenheit"
    @ifo= faheit
  else
    @ifo = cel
  end
  erb :escala
end
