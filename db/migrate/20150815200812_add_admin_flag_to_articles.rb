class AddAdminFlagToArticles < ActiveRecord::Migration
  def change
    add_column :recruiter_articles, :admin, :boolean
  end
end
