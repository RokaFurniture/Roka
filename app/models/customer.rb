class Customer < ActiveRecord::Base
  validates :name, :phone, :price_type, presence: true
  validates :name, uniqueness: true

  has_many :orders

  enum price_type: [:wholesale, :retail]

  def price_types
    [wholesale => 0, retail => 1]
  end
end
