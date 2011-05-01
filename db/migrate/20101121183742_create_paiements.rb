class CreatePaiements < ActiveRecord::Migration
  def self.up
    create_table :paiements do |t|
      t.string :method, :null => false
      t.belongs_to :plan

      t.timestamps
    end
  end

  def self.down
    drop_table :paiements
  end
end
