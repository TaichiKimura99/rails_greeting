class ChangeDatatypeDescriptionOfFoods < ActiveRecord::Migration[5.2]
  def change
    change_column :foods,:description,:text
  end
end
