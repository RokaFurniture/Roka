class OrderProduct < ActiveRecord::Base
  validates :order, :product, presence: true

  belongs_to :order
  belongs_to :product
  belongs_to :size
  belongs_to :color

  scope :products, -> (id) { where('order_id = ?', id) }
end
