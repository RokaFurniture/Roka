class ProductMaterial < ActiveRecord::Base
  validates :product_id, :material_id, :level, :value, presence: true
  validates_numericality_of :value, greater_than: 0

  belongs_to :product
  belongs_to :material

  enum level: [:joinery, :grinding, :painting, :assembly]

  def levels
    [joinery => 0, grinding => 1, painting => 2, assembly => 3]
  end

  scope :materials, -> (id) { where('product_id = ?', id) }
end
