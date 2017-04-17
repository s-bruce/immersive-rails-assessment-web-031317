class EpisodesController < ApplicationController
	before_action :logged_in

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
    @guests = @episode.guests
  end
end
