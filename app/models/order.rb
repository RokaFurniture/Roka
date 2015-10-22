class Order < ActiveRecord::Base
  validates :number, :date, :customer, presence: true
  validates :number, uniqueness: true

  belongs_to :customer
  has_many :products, through: :order_products
  has_many :order_products, dependent: :destroy

  enum status: [:in_process, :in_delivery, :completed, :archived]
end
