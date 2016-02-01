class AddUserToBlogAndDeleteUserIdFromPost < ActiveRecord::Migration
  def change
    remove_column :posts, :user_id
    add_column :blogs, :user_id, :integer
    add_column :posts, :blog_id, :integer
  end
end
