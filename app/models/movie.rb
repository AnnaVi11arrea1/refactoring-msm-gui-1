# == Schema Information
#
# Table name: movies
#
#  id          :bigint           not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord

  def director
    matching_id = self.director_id
    the_director = Director.where({ :id => matching_id }).at(0)
    return the_director
  end
  
  def characters
    movie_id = self.id
    matching_characters = Character.where({ :id => movie_id })
    the_character = matching_characters.at(0)
    return the_character
  end
end
