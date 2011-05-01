class CreateGuests < ActiveRecord::Migration
  def self.up
    create_table :guests do |t|
      t.string :firstname, :null => false
      t.string :lastname, :null => false
      t.string :email, :null => false
      t.string :phone
      t.boolean :did_come, :null => false, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :guests
  end
end
