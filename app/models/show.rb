class Show < ActiveRecord::Base 
  
  def highest_rating 
    Show.maximum(:rating)
  end 
  
  def most_popular_show
    rate = Show.highest_rating
    Show.find_by(rating: rate)
  end 
  
  def lowest_rating
    Show.minimum(:rating)
  end 
  
  def least_popular_show
    rate = Show.lowest_rating
    Show.find_by(rating: rate)
  end 
  
  def ratings_sum
    Show.all.sum(:rating)
  end 
  
  def popular_shows
    Show.all.where("rating: > 5")
  end 
  
  def shows_by_alphabetical_order
    Show.all.order(name: :desc)
  end
end