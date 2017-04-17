class GuestsController < ApplicationController
	before_action :logged_in

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
  end

end
