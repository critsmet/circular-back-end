class AddAdressToEntities < ActiveRecord::Migration[5.2]
  def change
    add_column :entities, :address, :string
  end
end
