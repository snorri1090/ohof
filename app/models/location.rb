class Location < ActiveRecord::Base

  scope :sorted, lambda { order("locations.id ASC") }
  scope :newest_first, lambda { order("locations.created_at DESC") }
  scope :search, lambda {|query|
    where(["name LIKE ?", "%#{query}%"])
  }

end
