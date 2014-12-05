class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :team_1_score
      t.integer :team_2_score
      t.integer :level

      t.timestamps
    end

    add_reference :matches, :team_1, index: true
    add_reference :matches, :team_2, index: true
    add_reference :matches, :championship, index: true
  end
end
