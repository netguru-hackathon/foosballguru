class AddParticipantsCountToChampionship < ActiveRecord::Migration
  def change
    add_column :championships, :participants_count, :string
  end
end
