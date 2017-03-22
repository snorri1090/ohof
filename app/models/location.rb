class Location < ActiveRecord::Base

  acts_as_listeds

  scope :sorted, lambda { order("location.position ASC")}
  scope :newest_first, lambda {order("location. created_at DESC")}
  scope :search, lambda {|query|
    where(["name LIKE ?", "%={query}%"])
  }

end
