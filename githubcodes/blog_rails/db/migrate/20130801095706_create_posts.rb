class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :username
      t.text :comment
      t.integer :blog_id
      t.timestamps
    end
  end
end
