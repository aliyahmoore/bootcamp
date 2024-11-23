class AddPriorityLevelToCategories < ActiveRecord::Migration[7.2]
  def change
    add_column :categories, :priority_level, :integer
  end
end
