class CreateVocabs < ActiveRecord::Migration
  def self.up
    create_table :vocabs do |t|
      t.string :name
      t.string :url
      t.text :note
      t.references :vocabtype

      t.timestamps
    end
  end

  def self.down
    drop_table :vocabs
  end
end
