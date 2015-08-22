class Color < ActiveRecord::Base
  validates :name, :color, presence: true
  validates :name, :color, uniqueness: true

  belongs_to :product
end
