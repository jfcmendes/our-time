class AddDiplomaFromTeachers < ActiveRecord::Migration[6.0]
  def change
    add_column :teachers, :diploma, :string
  end
end
