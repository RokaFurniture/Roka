class Size < ActiveRecord::Base
  validates :height, :width, :length, numericality: { greater_than: 0 }, allow_blank: true
  belongs_to :product_group
  belongs_to :product

  def name
    name = length ? (length.to_s + '(' + I18n.t('size.l') + ') x ') : ''
    name += (width.to_s + '(' + I18n.t('size.w') + ')') if width
    name += (' x ' + height.to_s + '(' + I18n.t('size.h') + ')') if height
    name
  end
end
