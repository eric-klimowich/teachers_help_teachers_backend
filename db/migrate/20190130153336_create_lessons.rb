class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :description
      t.text :file
      t.string :file_name
      t.integer :times_used
      t.integer :grade_subject_id

      t.timestamps
    end
  end
end
