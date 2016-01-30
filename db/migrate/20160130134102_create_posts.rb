class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.string :categories, array: true, default: []
      t.string :tags, array: true, default: []
      t.datetime :published_date
      t.boolean :published

      t.timestamps null: false
    end
  end
end
