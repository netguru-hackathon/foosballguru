class ChampionshipsController < ApplicationController
  def new
    @championship = Championship.new
    @users = User.all
  end

  def create
    @championship = Championship.new(champ_params)
    @users = User.all
    if participant_count_valid? && @championship.valid?
      ChampionshipCreator.new(params[:user_ids]).create!
      redirect_to root_url, notice: 'Championship has been created! Nie graj środkiem!'
    else
      flash.now[:error] = "Nieprawidlowe dane"
      render :new
    end
  end

  private

  def participant_count_valid?
    champ_params[:participants_count].to_i == params[:user_ids].try(:count).to_i
  end

  def champ_params
    params.require(:championship).permit(:participants_count)
  end
end
