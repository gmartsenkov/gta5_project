class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :user_id
      t.string :url
      t.boolean :bad_behavior
      t.boolean :bad_host

      t.timestamps
    end
  end
end
