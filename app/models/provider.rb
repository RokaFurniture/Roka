class Provider < ActiveRecord::Base
  validates :name, :phone, uniqueness: true
  validates :name, :phone, :adress, presence: true

  has_many :inputs
end
