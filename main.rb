#server side
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pry'
require 'sinatra/cors'

set :allow_origin, "*"

get '/api/forecast' do
  url = "https://api.darksky.net/forecast/91bb6c1f56ca75f2ac7cba7f0acade27/#{params[:lat]},#{params[:lng]}/?units=si"
  
  puts url
  res = HTTParty.get(url)
  
  content_type "application/json"
  

  res.parsed_response.to_json 
end







