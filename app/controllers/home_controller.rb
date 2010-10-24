class HomeController < ApplicationController
  
  def index
    min_tag_count = 0
    max_tag_count = 0
    first_count = true
    @tags2 = Array.new
    Vocab.all.each do |vocab|
      count = Usage.find_all_by_vocab_id(vocab.id).size
      if(first_count) then
        min_tag_count = count
        max_tag_count = count
        first_count = false
      else
        if(min_tag_count > count) then min_tag_count = count end
        if(max_tag_count < count) then max_tag_count = count end
      end
      # if(count > 10 ) then count = 10 end
      @tags2 << [vocab,count]
    end
    unless min_tag_count = 0 then max_tag_count = max_tag_count - (min_tag_count-1) end
    increment = max_tag_count / 10.0
    @tags2.each do |tag|
      tag[1] = (tag[1] / increment).ceil
    end
  end
  
end
