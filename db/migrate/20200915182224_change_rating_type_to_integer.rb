class ChangeRatingTypeToInteger < ActiveRecord::Migration[6.0]
  def change
    remove_column(:reviews, :rating)
    add_column(:reviews, :rating, :integer, default: 5, null: false)
  end
end
