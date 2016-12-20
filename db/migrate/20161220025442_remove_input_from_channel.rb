class RemoveInputFromChannel < ActiveRecord::Migration[5.1]
  def change
    remove_column :channels, :input, :string
  end
end
