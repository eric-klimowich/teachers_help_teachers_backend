class CreateGradeLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :grade_levels do |t|
      t.string :grade
      t.integer :user_id

      t.timestamps
    end
  end
end
