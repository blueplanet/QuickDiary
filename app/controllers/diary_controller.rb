
class DiaryController < ApplicationController
  def new
    @diary = Diary.new( :date => Date.today)
    1.upto(9) do |i|
      @diary.diary_items.new( :no => i, :title => "no_#{i}")
    end

  end
end
