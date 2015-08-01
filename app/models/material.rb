class Material < ActiveRecord::Base
  validates :name, :option, presence: true
end
