class User < ActiveRecord::Base
  validates :first_name, :username, :email, presence: true
  validates :username, :email, uniqueness: true
end
