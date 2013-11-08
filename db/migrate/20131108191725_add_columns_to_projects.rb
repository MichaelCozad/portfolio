class AddColumnsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :img1, :string
    add_column :projects, :img2, :string
    add_column :projects, :img3, :string
    add_column :projects, :img4, :string
    add_column :projects, :img5, :string
    add_column :projects, :img6, :string
    add_column :projects, :img7, :string
    add_column :projects, :img8, :string
  end
end
