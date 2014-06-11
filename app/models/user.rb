class User < ActiveRecord::Base
  has_secure_password

  has_many :guesses
  has_many :user_awards
  
  before_save { |user| user.email = email.downcase }

  validates :email, uniqueness: true, length: { maximum: 40 }
  validates_format_of :email, with: %r{\A[A-Za-z0-9._%+-]+@(?:[A-Za-z0-9.-]+\.)+[A-Za-z]+\z}
end
