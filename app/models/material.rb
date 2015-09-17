class Material < ActiveRecord::Base
  validates :name, presence: true

  def title
    name << ' (' << option << ')'
  end
end
