class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name

      t.timestamps
    end

    add_reference :temas, :user_1, index: true
    add_reference :temas, :user_2, index: true
  end
end
