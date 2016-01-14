class Provider < ActiveRecord::Base
  validates :name, :phone, uniqueness: true
  validates :name, :phone, :address, presence: true

  has_many :inputs
end
