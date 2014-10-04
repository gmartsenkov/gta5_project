class AddImageToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :img_path, :string
  end
end
