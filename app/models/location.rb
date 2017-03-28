class Location < ActiveRecord::Base

  has_many :visits

  scope :sorted, lambda { order("locations.id ASC") }
  scope :newest_first, lambda { order("locations.created_at DESC") }
  scope :search, lambda {|query|
    where(["name LIKE ?", "%#{query}%"])
  }

end
