class Product < ActiveRecord::Base
  validates :name, :product_group, :size, :color, presence: true
  validates :image, allow_blank: true, format: { with: /\.(jpg|png)/ }

  belongs_to :product_group
  belongs_to :size
  belongs_to :color

  has_many :product_materials, dependent: :destroy
  has_many :materials, through: :product_materials

  mount_uploader :image, ImageUploader

  def name_long
    [product_group.name, name, size.name, color.name].join(' - ')
  end
end
