# -*- coding: utf-8 -*-
require 'spec_helper'

describe Diary do
  before(:each) do
    @diary = Diary.new
  end

  describe "#diary_items" do
    describe "設定されてない場合" do
      it { @diary.should_not be_valid }
    end

    describe "１件設定されている場合" do
      before do
        @diary.diary_items.new( :no => 1 )
      end

      it { @diary.should be_valid }
    end
  end
end
