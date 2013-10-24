class RemoveColumnFromComments < ActiveRecord::Migration
  def up
    remove_column :comments, :post_id
  end

  def down
    add_column :comments, :post_id, :string
  end
end
