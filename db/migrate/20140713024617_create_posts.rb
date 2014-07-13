class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :content
      t.string :category
      t.integer :upvotes
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
