class CreateGradeSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :grade_subjects do |t|
      t.string :subject
      t.integer :grade_level_id

      t.timestamps
    end
  end
end
