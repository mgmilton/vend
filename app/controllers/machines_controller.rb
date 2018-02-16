class MachinesController < ApplicationController
  def index
    @owner = Owner.find(params[:owner_id])
  end

  def show
    @machine = Machine.find(params[:id])
  end

  # private
  # def machine_params
  #   params.require(:machine).permit(:location, :own)
  # end
end
