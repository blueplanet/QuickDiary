# -*- coding: utf-8 -*-
require 'spec_helper'

describe DiaryTemplate do
  before(:each) do
    @template = DiaryTemplate.new
  end

  describe "#seq" do
    it "0の場合、検証を通らない" do
      @template.seq = 0
      @template.should_not be_valid
    end

    it "1の場合、検証OK" do
      @template.seq = 1
      @template.title = "no1"
      @template.should be_valid
    end

    it "重複の場合、検証NG" do
      temp1 = DiaryTemplate.new( :seq => 1)
      temp1.save

      @template.seq = 1
      @template.should_not be_valid
    end
  end

  describe "#title" do
    it "空の場合、検証NG" do
      @template.seq = 1
      @template.should_not be_valid
    end

    it "重複の場合、検証NG" do
      temp1 = DiaryTemplate.new( :seq => 1, :title => "temp1")
      temp1.save
      @template.seq = 2
      @template.title = "temp1"

      @template.should_not be_valid
    end
  end
end
