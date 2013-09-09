require 'data_mapper'
require 'dm-sqlite-adapter'

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/database.db")


class Note
  include DataMapper::Resource
  property :id, Serial
  property :content, Text, :required => true
  property :complete, Boolean, :required => true, :default => false
  property :created_at, DateTime
  property :updated_at, DateTime
end


DataMapper.finalize
