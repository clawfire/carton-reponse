class CreateCampagnes < ActiveRecord::Migration
  def self.up
    create_table :campagnes do |t|
      t.string :title, :null => false
      t.datetime :date, :null => false
      t.string :gps
      t.string :adress
      t.text :text
      t.string :file
      t.string :limit, :null => false
      t.string :response, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :campagnes
  end
end
