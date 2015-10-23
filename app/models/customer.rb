class Customer < ActiveRecord::Base
  validates :name, :phone, :type, presence: true
  validates :name, uniqueness: true

  enum type: [:wholesale, :retail]
end
