class AddNameToChampionships < ActiveRecord::Migration
  def change
    add_column :championships, :name, :string
  end
end
