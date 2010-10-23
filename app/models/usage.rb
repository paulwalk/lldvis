class Usage < ActiveRecord::Base
  belongs_to :vocab
  belongs_to :usecase
end
