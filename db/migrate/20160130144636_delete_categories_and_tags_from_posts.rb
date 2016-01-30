class DeleteCategoriesAndTagsFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :categories
    remove_column :posts, :tags
  end
end
