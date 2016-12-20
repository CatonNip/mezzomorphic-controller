class CreateInputs < ActiveRecord::Migration[5.1]
  def change
    create_table :inputs do |t|
      t.string :name
      t.string :artist
      t.string :url
      t.integer :channel_id
      
      t.timestamps
    end

  end


end
