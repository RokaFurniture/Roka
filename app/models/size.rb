class Size < ActiveRecord::Base
  validates :height, :width, :length, numericality: { greater_than: 0 }
  belongs_to :product_group
  belongs_to :product

  def name
    [length, width, height].delete_if(&:nil?).join(' x ')
  end
end
