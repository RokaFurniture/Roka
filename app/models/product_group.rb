class ProductGroup < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true

  has_many :products
  has_many :sizes
end
