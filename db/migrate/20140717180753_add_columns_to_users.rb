class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :school_email, :string
    add_column :users, :username, :string
    add_column :users, :School, :string
    add_column :users, :grade, :integer
  rename_column :users, :email, :personal_email
  end
end
