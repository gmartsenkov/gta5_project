class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :owner
      t.string :console
      t.integer :players
      t.integer :category_id
      t.string :title
      t.text :description
      t.string :image
      t.datetime :start_time

      t.timestamps
    end
  end
end
