class CreateBehaviorRanks < ActiveRecord::Migration
  def change
    create_table :behavior_ranks do |t|
      t.integer :rank
      t.string :colorName
      t.integer :colorCode
      t.string :name

      t.timestamps
    end
  end
end
