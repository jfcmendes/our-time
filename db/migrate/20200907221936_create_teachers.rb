class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.references :user, null: false, foreign_key: true
      t.string :speciality
      t.text :description
      t.integer :max_students
      t.integer :price
      t.integer :fee
      t.string :max_distance

      t.timestamps
    end
  end
end
