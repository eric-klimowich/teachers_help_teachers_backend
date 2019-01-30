class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :description
      t.string :grade
      t.string :subject
      t.integer :times_used
      t.string :file
      t.string :user_id

      t.timestamps
    end
  end
end
