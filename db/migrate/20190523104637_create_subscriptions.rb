class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.integer :subscriber_id, index: true, foreign_key: {to_table: :entities}
      t.integer :subscribed_id, index: true, foreign_key: {to_table: :entities}
      t.timestamps
    end
  end
end
