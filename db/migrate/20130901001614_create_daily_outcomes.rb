class CreateDailyOutcomes < ActiveRecord::Migration
  def change
    create_table :daily_outcomes do |t|
      t.integer :student_id
      t.integer :classgroup_id
      t.references :behavior_rank
      t.date :date
      t.string :comment

      t.timestamps
    end
    add_index :daily_outcomes, :behavior_rank_id
  end
end
