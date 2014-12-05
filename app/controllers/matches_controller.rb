class MatchesController < ApplicationController
  expose(:championship)
  expose(:match, attributes: :match_params)

  def show
  end

  def edit
  end

  def update
    if match.update_attributes(match_params)
      if ChampionshipUpdater.new(championship.id, match.id).update == :final
        flash[:notice] = "Final match!!!!!1111"
      else
        flash[:notice] = "You updated match between #{match.team_1.name} and #{match.team_2.name}."
      end
      redirect_to championship
    else
      render 'edit'
    end
  end 


  private
    def match_params
      params.require(:match).permit(:team_1_score, :team_2_score)
    end
end
