class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.string :school
      t.integer :grade

      t.timestamps
    end
  end
end
