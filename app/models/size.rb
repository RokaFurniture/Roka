class Size < ActiveRecord::Base
  validates :width, :length, presence: true

  belongs_to :product_group
end
