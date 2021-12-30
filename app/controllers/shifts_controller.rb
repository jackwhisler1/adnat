class ShiftsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def edit
    @shift = Shift.find(params[:id])
  end

  def update
    @shift = Shift.find(params[:id])
    p @shift
    @shift.start = params[:shift][:start] || @shift.start
    @shift.end = params[:shift][:end] || @shift.end
    if @shift.save
      redirect_to  organization_path(id: @shift.organization_id)
    else
      render :edit
    end
  end

  def destroy
  end
end
