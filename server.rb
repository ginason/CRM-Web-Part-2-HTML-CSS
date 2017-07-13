require 'sinatra'
require_relative 'crm'

get '/' do
  redirect to('/contact')
end

get '/contact' do
  @contact = Crm.all
  erb :contact
end
