class User < ActiveRecord::Base
  attr_accessible :email, :phone_number, :user_name

  EMAIL_REGEX = /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/

  validates_format_of :email, :with => EMAIL_REGEX, :message => "Email is not valid"
  validates :email, :user_name, presence: true
  validates :user_name, length: {minimum: 4}
  has_many :trip

end
