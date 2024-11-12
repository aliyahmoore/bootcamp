# lib/tasks/backfill_category_descriptions.rake
namespace :categories do
  desc "Backfill descriptions for existing categories"
  task backfill_descriptions: :environment do
    # Set a default description if none exists
    default_description = "No description provided"

    # Loop through all categories and update their description if it's nil or empty
    Category.find_each do |category|
      if category.description.nil? || category.description.blank?
        category.update(description: default_description)
        puts "Updated category ##{category.id} with default description."
      else
        puts "Category ##{category.id} already has a description."
      end
    end
  end
end
