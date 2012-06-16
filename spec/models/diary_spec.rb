# -*- coding: utf-8 -*-
require 'spec_helper'

describe Diary do
  before(:each) do
    @diary = Diary.new
  end

  describe "#diary_items" do
    it "設定されてない場合、検証NG" do
      @diary.should_not be_valid
    end

    it "１件設定されている場合、検証OK" do
      item = DiaryItem.new( :no => 1, :title => "健康")
      @diary.diary_items << item

      @diary.should be_valid
    end
  end
end
