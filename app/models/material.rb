# TODO: change column 'count' to something else

class Material < ActiveRecord::Base
  validates :name, presence: true

  def title
    name << ' (' << option << ')'
  end
end
