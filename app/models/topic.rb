class Topic < ActiveRecord::Base
  belongs_to :topiccluster
  has_and_belongs_to_many :usecases
end
