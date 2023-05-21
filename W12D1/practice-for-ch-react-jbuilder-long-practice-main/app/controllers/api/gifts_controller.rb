class Api::GiftsController < ApplicationController
  def index
    @gifts = Gift.includes(:party).where(guest_id: params[:guest_id])

    render :index
    # render :normalized_index
  end

  def show
    @gift = Gift.includes(:party).includes(:guest).find(params[:id])
    render :show
  end
end
