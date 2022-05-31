# frozen_string_literal: true

require 'rubygems'
require 'json'
require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/json'

require_relative 'models/user'
require_relative 'models/brand'
require_relative 'models/vehicle'

class App < Sinatra::Application
  post '/login' do
    # Recibe login/pass y comprueba de que exista en tabla usuarios
    json 'ok'
  end

  get '/error' do
    # Recibe login/pass y comprueba de que exista en tabla usuarios
    json 'error'
  end

  post '/post_data' do
    #	PostData () Guarda los datos de Patente, Marca, Precio, y Usuario
    json 'ok'
  end

  get '/get_data' do
  	 # GetData() Obtiene desde el servidor el listado de Patente, Marca, #Precio y Usuario
     json 'ok get data'
  end

  get '/get_marcas' do
    json Brand.all.pluck(:name)
  end

  get '/delete/id' do
    #	Delete (Id) :Permite Eliminar un registro en la api
    json 'borrado'
  end

  post '/logout' do
    # Recibe login/pass y comprueba de que exista en tabla usuarios
    json 'ok logout'
  end
end
