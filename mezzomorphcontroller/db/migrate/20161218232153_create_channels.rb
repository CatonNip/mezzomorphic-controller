class CreateChannels < ActiveRecord::Migration[5.1]
  def change
    create_table :channels do |t|
      t.string :name
      t.text :description
      t.string :input
      t.integer :user_id

      t.timestamps
    end
  end
end
