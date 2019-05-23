class AddCategoryToEvents < ActiveRecord::Migration[5.2]
  def up
     execute <<-DDL
      CREATE TYPE event_category AS ENUM ('music', 'art', 'film', 'performance', 'food', 'protest', 'class', 'workshop', 'gathering');
     DDL
     add_column :events, :category, :event_category
     add_index :events, :category
   end

   def down
     remove_column :events, :category
     execute <<-DDL
       DROP TYPE event_category;
     DDL
   end
end
