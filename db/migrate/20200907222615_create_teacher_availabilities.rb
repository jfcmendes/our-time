class CreateTeacherAvailabilities < ActiveRecord::Migration[6.0]
  def change
    create_table :teacher_availabilities do |t|
      t.references :teacher, null: false, foreign_key: true
      t.string :day
      t.string :start_time
      t.string :end_time

      t.timestamps
    end
  end
end
