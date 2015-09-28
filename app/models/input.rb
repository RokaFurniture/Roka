class Input < ActiveRecord::Base
  validates :num, :date, :provider, presence: true
  validates :num, uniqueness: true

  belongs_to :provider
  has_many :materials, through: :input_materials
  has_many :input_materials, dependent: :destroy
end
