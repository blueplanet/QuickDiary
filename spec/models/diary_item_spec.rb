# -*- coding: utf-8 -*-
require 'spec_helper'

describe DiaryItem do
  before(:each) do
    @item = DiaryItem.new
  end

  describe "#no" do
    it "空の場合、検証NG" do
      @item.should_not be_valid
    end

    it "0の場合、検証NG" do
      @item.no = 0
      @item.should_not be_valid
    end

    it "1の場合、検証OK" do
      @item.no = 1
      @item.title = "健康"
      @item.should be_valid
    end
  end

  describe "#title" do
    before do
      @item.no = 1
    end

    context "空の場合" do
      it "検証NG" do
        @item.should_not be_valid
      end

      it "タイトルのエラーメッセージが表示される" do
        @item.errors.messages.key? :title
      end
    end
  end
end
