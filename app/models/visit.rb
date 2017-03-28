class Visit < ActiveRecord::Base

  belongs_to :location

  scope :sorted, lambda { order("visits.id ASC") }
  scope :newest_first, lambda { order("visits.created_at DESC") }
  scope :search, lambda {|query|
    where(["name LIKE ?", "%#{query}%"])
  }

end
