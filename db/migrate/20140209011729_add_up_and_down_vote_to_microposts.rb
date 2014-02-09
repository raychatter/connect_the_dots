class AddUpAndDownVoteToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :up_vote, :integer
    add_column :microposts, :down_vote, :integer
  end
end
