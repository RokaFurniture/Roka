class User < ActiveRecord::Base
  validates :first_name, :password, :email, presence: true
  validates :email, uniqueness: true
end
