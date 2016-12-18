class CreateChannels < ActiveRecord::Migration[5.1]
  def change
    create_table :channels do |t|
      t.string :name
      t.text :description
      t.string :input

      t.timestamps
    end
  end
end
