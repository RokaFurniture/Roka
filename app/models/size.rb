class Size < ActiveRecord::Base
  validates :role, presence: true
  validates :height, :width, :length, numericality: { greater_than: 0 }, \
                                      allow_blank: true

  enum role: [:standard, :non_standard]

  belongs_to :product_group
  belongs_to :product

  def name
    a = []
    a.push(length.to_s + I18n.t('size.l')) if length
    a.push(width.to_s + I18n.t('size.w')) if width
    a.push(height.to_s + I18n.t('size.h')) if height
    a.compact.join(' x ')
  end

  scope :for_group, -> (group) { where('product_group_id = ?', group) }
end
