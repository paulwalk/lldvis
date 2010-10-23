class CreateUsages < ActiveRecord::Migration
  def self.up
    create_table :usages do |t|
      t.string :description
      t.text :note
      t.references :vocab
      t.references :usecase

      t.timestamps
    end
  end

  def self.down
    drop_table :usages
  end
end
