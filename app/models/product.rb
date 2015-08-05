class Product < ActiveRecord::Base
  validates :name, :product_group, presence: true

  belongs_to :product_group
end
