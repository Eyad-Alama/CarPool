class User < ActiveRecord::Base
  attr_accessible :email, :phone_number, :user_name

  has_many :trip

end
