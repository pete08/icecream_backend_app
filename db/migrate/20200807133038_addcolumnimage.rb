class Addcolumnimage < ActiveRecord::Migration[6.0]
  def change
    add_column :flavors, :image_url, :string
    remove_column :flavors, :color, :string
  end
end
