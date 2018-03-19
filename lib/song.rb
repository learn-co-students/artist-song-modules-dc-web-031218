require 'pry'
# require_relative './concerns/memorable.rb'
# require_relative'../config/environment.rb'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods, Findable::ClassMethods
  include Memorable::InstanceMethods, Paramable::InstanceMethods

  @@songs = []

  def artist=(artist)
    @artist = artist
  end


  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end


  def self.all
    @@songs
  end
end
