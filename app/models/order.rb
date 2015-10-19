class Order < ActiveRecord::Base
  validates :number, :date, :customer, presence: true
  validates :number, uniqueness: true

  belongs_to :customer

  enum status: [:in_process, :in_delivery, :completed, :archived]
end
