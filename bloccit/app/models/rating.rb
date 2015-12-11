class Rating < ActiveRecord::Base
    has_many :topics
    has_many :posts
    enum severity: [ :PG, :PG13, :R ]
    
    before_save { self.severity ||= :pg }

  def self.update_rating(rating)
    Rating.find_or_create_by(severity: rating.to_i)
  end
end
