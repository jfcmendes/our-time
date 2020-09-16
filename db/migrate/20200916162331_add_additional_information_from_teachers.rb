class AddAdditionalInformationFromTeachers < ActiveRecord::Migration[6.0]
  def change
    add_column(:teachers, :additional_informations, :string)
  end
end
