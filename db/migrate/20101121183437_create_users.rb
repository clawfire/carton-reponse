class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :login, :null =>false
      t.string :email, :null => false
      t.string :password_hash, :limit => 64, :null => false
      t.string :password_salt, :limit => 32, :null => false
      t.boolean :privilegied, :null => false, :default => false

      t.timestamps
    end
    #Make login unique
    add_index :users, :login , :unique => true;
    
    create_table :clients do |t|
      t.belongs_to :user
      t.string :display_name, :null => false
      t.string :firstname
      t.string :lastname
      t.string :company
      t.string :adress
      t.string :zipcode
      t.string :country
      t.string :phone
      t.string :tva_number
      t.belongs_to :plan
    end
  end

  def self.down
    drop_table :users
    drop_table :clients
  end
end
