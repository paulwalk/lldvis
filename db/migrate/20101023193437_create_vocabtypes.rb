class CreateVocabtypes < ActiveRecord::Migration
  def self.up
    create_table :vocabtypes do |t|
      t.string :name
      t.string :url
      t.text :note

      t.timestamps
    end
  end

  def self.down
    drop_table :vocabtypes
  end
end
