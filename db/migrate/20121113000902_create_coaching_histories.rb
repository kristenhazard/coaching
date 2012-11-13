class CreateCoachingHistories < ActiveRecord::Migration
  def change
    create_table :coaching_histories do |t|
      t.integer :coach_id
      t.integer :team_id
      t.string :year
      t.string :role

      t.timestamps
    end
  end
end
