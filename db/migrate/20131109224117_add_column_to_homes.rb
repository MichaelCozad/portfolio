class AddColumnToHomes < ActiveRecord::Migration
  def change
    add_column :homes, :post_id, :integer
  end
end
