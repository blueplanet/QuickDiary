
class DiaryController < ApplicationController
  def new
    @diary = Diary.new( :date => Date.today )

    templates = DiaryTemplate.all

    if templates.count > 0
      templates.each do |temp|
        @diary.diary_items << DiaryItem.new( :no => temp.seq, :title => temp.title )
      end
    else
      9.times do |index|
        @diary.diary_items << DiaryItem.new( :no => index )
      end
    end
  end
end
