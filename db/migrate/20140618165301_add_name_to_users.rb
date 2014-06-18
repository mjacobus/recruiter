class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :recruiter_users, :name, :string
  end
end
