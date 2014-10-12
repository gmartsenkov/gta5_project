class CreateDefaultAvatars < ActiveRecord::Migration
  def change
    create_table :default_avatars do |t|
      t.string :avatar_default

      t.timestamps
    end
  end
end
