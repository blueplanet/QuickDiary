# -*- coding: utf-8 -*-
require 'spec_helper'

describe DiaryItem do
  before(:each) do
    @item = DiaryItem.new
  end

  describe "#no" do
    describe "空の場合" do
      it { @item.should_not be_valid }
    end

    describe "0の場合" do
      before do
        @item.no = 0
      end

      it { @item.should_not be_valid }
    end

    describe "1の場合" do
      before do
        @item.no = 1
      end

      it { @item.should be_valid }
    end
  end
end
