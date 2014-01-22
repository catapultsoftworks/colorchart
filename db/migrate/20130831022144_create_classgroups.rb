class CreateClassgroups < ActiveRecord::Migration
  def change
    create_table :classgroups do |t|
      t.string :grade
      t.integer :year

      t.timestamps
    end
  end
end
