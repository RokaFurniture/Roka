class InputMaterial < ActiveRecord::Base
  validates :price, :count, presence: true

  belongs_to :input
  belongs_to :material

  scope :materials, -> (id) { where('input_id = ?', id) }
end
