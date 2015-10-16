class User < ActiveRecord::Base
  validates :name, :email, presence: true
  validates :email, uniqueness: true
  has_secure_password

  enum post: [:admin, :manager, :operator, :worker]

  def posts
    [manager => 1, operator => 2, worker => 3]
  end
end
