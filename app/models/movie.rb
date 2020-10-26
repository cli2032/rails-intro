class Movie < ActiveRecord::Base
  def self.with_ratings(ratings_list)
  # if ratings_list is an array such as ['G', 'PG', 'R'], retrieve all
  #  movies with those ratings
  # if ratings_list is nil, retrieve ALL movies
    if (ratings_list == nil)
      return Movie.all
    elsif (ratings_list.kind_of?(Array))
      return Movie.where(rating: ratings_list)
      # TODO: add case insensitivity
    end
  end
  
  def self.all_ratings
    return Movie.distinct.pluck(:rating)
  end
end
