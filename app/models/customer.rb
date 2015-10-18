class Customer < ActiveRecord::Base
  validates :name, :phone, presence: true
  validates :name, uniqueness: true
end
