class AddEntityTypeToEntities < ActiveRecord::Migration[5.2]
  def up
     execute <<-DDL
      CREATE TYPE type_of_entity AS ENUM ('personal', 'collective', 'venue');
     DDL
     add_column :entities, :entity_type, :type_of_entity
     add_index :entities, :entity_type
   end

   def down
     remove_column :entities, :entity_type
     execute <<-DDL
       DROP TYPE type_of_entity;
     DDL
   end
end
