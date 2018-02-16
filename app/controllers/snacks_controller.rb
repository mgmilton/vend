class SnacksController < ApplicationRecord

  def show
    @snack = Snack.find(params[:id])
  end

end
