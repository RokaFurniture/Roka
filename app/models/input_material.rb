class InputMaterial < ActiveRecord::Base
  validates :price, :count, presence: true

  belongs_to :material
  belongs_to :input
end
