class ChampionshipsController < ApplicationController

  def new
  end

  def create
    ChampionshipCreator.new(params[:championship][:user_ids]).create!
    redirect_to root_path, notice: 'Championship has been created! Nie graj środkiem!'
  end
end
