class ChampionshipsController < ApplicationController

  def new
  end

  def create
    ChampionshipCreator.new(params[:championship]).create!
    redirect_to root_path, notice: 'Championship has been created! Nie graj środkiem!'
  end
end
