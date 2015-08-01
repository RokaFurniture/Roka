class Size < ActiveRecord::Base
  validates :width, :length, presence: true
end
