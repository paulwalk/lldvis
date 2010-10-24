class CreateTopics < ActiveRecord::Migration
  def self.up
    create_table :topics do |t|
      t.string :name
      t.string :url
      t.text :note
      t.references :topiccluster

      t.timestamps
    end
  end

  def self.down
    drop_table :topics
  end
end
