class ChangeDefaultInPosts < ActiveRecord::Migration
  def change
  	change_column :posts, :upvotes, :integer, default:0 
  end
end
