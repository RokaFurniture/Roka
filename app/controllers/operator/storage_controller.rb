class Operator::StorageController < ApplicationController
  layout 'operator'

  def index
    @materials = Material.all.order(:name)
  end
end
