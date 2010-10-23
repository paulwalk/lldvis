class Usecase < ActiveRecord::Base
  has_and_belongs_to_many :topics
  has_many :vocabs, :through => :usages
  has_many :usages
end
