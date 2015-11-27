class Product < ActiveRecord::Base
  validates :name, :product_group, presence: true
  validates :image, allow_blank: true, format: { with: /\.(jpg|png)/ }

  belongs_to :product_group
  belongs_to :size
  belongs_to :color

  has_many :product_materials, dependent: :destroy
  has_many :materials, through: :product_materials

  mount_uploader :image, ImageUploader

  def name_with_group
    [product_group.name, name].join(' - ')
  end

  def full_name
    full_name = product_group.name << ' ' << name
    full_name << ', ' << size.name if size
    full_name
  end

  scope :for_group, -> (group) { where('product_group_id = ?', group) }
end
