class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :content
      t.belongs_to :micropost, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
