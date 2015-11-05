class Order < ActiveRecord::Base
  validates :number, :date, :customer, presence: true
  validates :number, uniqueness: true

  belongs_to :customer
  has_many :products, through: :order_products
  has_many :order_products, dependent: :destroy

  enum status: [:init, :joinery, :grinding, :painting, :assembly, :completed,
                :in_delivery, :finished]
end
