class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :description
      t.string :grade
      t.string :subject
      t.integer :times_used
      t.integer :added_by
      t.string :file

      t.timestamps
    end
  end
end
