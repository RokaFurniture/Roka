class OutputMaterial < ActiveRecord::Base
  validates :count, presence: true

  belongs_to :output
  belongs_to :material

  scope :materials, -> (id) { where('output_id = ?', id) }
end
