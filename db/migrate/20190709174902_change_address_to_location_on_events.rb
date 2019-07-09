class ChangeAddressToLocationOnEvents < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :address, :location
  end
end
