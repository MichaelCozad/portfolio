class AddPublishedToComments < ActiveRecord::Migration
  def change
    add_column :comments, :published, :boolean
    add_index :comments, :published
  end
end
