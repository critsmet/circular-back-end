class AddSelfDestructToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :self_destruct?, :boolean
  end
end
