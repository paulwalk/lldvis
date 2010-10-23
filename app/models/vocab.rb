class Vocab < ActiveRecord::Base
  has_many :usecases, :through => :usages
  has_many :usages
  belongs_to :vocabtype
end
