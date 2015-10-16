class Output < ActiveRecord::Base
  validates :num, :date, :order, presence: true
  validates :num, uniqueness: true

  has_many :materials, through: :output_materials
  has_many :output_materials, dependent: :destroy

  belongs_to :worker
end
