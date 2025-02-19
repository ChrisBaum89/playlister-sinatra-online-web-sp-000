require_relative './concerns/slugfiable.rb' #add this so it can find module

class Song < ActiveRecord::Base
  include Slugfiable::InstanceMethods
  extend Slugfiable::ClassMethods

  belongs_to :artist

  has_many :song_genres
  has_many :genres, through: :song_genres

end
