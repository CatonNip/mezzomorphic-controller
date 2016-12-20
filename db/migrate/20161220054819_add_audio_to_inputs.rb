class AddAudioToInputs < ActiveRecord::Migration[5.1]
  def self.up
    add_attachment :inputs, :audio
  end
  
  def self.down
    remove_attachment :inputs, :audio
  end
end
