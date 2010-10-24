class CreateUsecaseclusters < ActiveRecord::Migration
  def self.up
    create_table :usecaseclusters do |t|
      t.string :name
      t.text :note

      t.timestamps
    end
  end

  def self.down
    drop_table :usecaseclusters
  end
end
