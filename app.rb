require 'sinatra'
require './db.rb'

get '/' do
  @notes = Note.all
  erb :index
end
