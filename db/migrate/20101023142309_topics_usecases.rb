class TopicsUsecases < ActiveRecord::Migration
  def self.up
    create_table :topics_usecases, :id => false do |t|
      t.integer :topic_id
      t.integer :usecase_id
    end
  end

  def self.down
    drop_table :topics_usecases
  end
end
