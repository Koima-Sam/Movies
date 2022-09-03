class Movie < ActiveRecord::Base
   has_many :roles
   has_many :actors, through: :roles

   def self.find_movie_with_id(id)
        Movie.find(id)
    end
end