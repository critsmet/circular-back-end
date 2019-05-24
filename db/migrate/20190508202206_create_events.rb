class CreateEvents < ActiveRecord::Migration[5.2]
  def change
      create_table :events do |t|
        t.string :name, index: true
        t.timestamp :date, index: true
        t.string :description
        t.string :address, index: true
        t.timestamps
      end
    end
end
