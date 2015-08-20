class Product < ActiveRecord::Base
  validates :name, :product_group, :size, presence: true
  validates :image, allow_blank: true, format: { with: /\.(jpg|png)/ }

  belongs_to :product_group
  has_many :product_materials, dependent: :destroy
  has_many :materials, through: :product_materials
  belongs_to :size

  mount_uploader :image, ImageUploader
end
