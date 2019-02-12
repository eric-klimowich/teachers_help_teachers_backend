class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :grade_teaching
      t.string :subject_teaching

      t.timestamps
    end
  end
end
