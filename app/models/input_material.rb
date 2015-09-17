class InputMaterial < ActiveRecord::Base
  validates :price, :count, presence: true

  belongs_to :input
  belongs_to :material
end
