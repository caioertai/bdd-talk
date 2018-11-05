class AddCuddleCountToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :cuddle_count, :integer, null: false, default: 0
  end
end
