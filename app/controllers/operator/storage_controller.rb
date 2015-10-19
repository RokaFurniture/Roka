class Operator::StorageController < ApplicationController
  def index
    @materials = Material.all.order(:name)
  end
end
