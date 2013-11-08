class AddColumnToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :body, :text
    add_column :projects, :title, :string
  end
end
