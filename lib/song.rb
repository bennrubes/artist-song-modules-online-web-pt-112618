require 'pry'

class Song
  include Paramable
  include Memorable::InstanceMethods
  extend Findable
  extend Memorable::ClassMethods
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    self.class.all << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
  
end
