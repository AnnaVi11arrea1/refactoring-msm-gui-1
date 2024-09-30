# == Schema Information
#
# Table name: directors
#
#  id         :bigint           not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  def filmography
    my_id = self.id

    matching_movies = Movie.where({ :director_id => my_id })

    return matching_movies
  end
end

#Three 1 to many relationships:
# - Director has many movies
# - Actor has many characters
# - Movie has many characters

# Try to define:

# - Director.filmography
# - Movie.director
# - Movie.characters
# - Character.movie
# - Character.actor
# - Actor.characters
