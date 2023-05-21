class Api::GuestsController < ApplicationController
  def index
    @guests = Guest.includes(:gifts).all

    # render :index
    render :normalized_index
  end

  def show
    @guest = Guest.includes(:gifts).find(params[:id])
    render :show
  end
end
