class Size < ActiveRecord::Base
  belongs_to :product_group
  belongs_to :product

  def name
    length.to_s << ' x ' << width.to_s << ' x ' << height.to_s
  end
end
