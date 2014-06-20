class Trip < ActiveRecord::Base
  attr_accessible :from, :seats_left, :seats_max, :to, :trip_date, :user_id

  validates :from, :to, :seats_max, :trip_date, presence: true
  belongs_to :user


end
