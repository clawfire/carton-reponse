class CreatePlans < ActiveRecord::Migration
  def self.up
    create_table :plans do |t|
      t.string :title, :null => false
      t.integer :price, :null => false, :default => 0
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :plans
  end
end
