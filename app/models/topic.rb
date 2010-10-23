class Topic < ActiveRecord::Base
  belongs_to :cluster
  has_and_belongs_to_many :usecases
end
