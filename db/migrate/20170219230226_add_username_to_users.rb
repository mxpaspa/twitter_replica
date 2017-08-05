class AddUsernameToUsers < ActiveRecord::Migration[5.0]
  def change #anything inside of this method is translated to SQL code and modified to the database
    add_column :users, :username, :string # adds a new column to the table "users", called "username" and type "string"
    add_index :users, :username, unique: true #first, index usernames for quick (rapid)lookup. Second ensure usernames are always unique
  end
end
