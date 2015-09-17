class Input < ActiveRecord::Base
  validates :num, :date, :provider, presence: true
  validates :num, uniqueness: true

  has_one :provider
  has_many :materials, through: :input_materials
end
