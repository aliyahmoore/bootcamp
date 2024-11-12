class AddDescriptionToCategories < ActiveRecord::Migration[7.2]
  def change
    # Check if the column exists before adding it
    unless column_exists?(:categories, :description)
      add_column :categories, :description, :text
    end
  end
end
