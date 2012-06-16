# -*- coding: utf-8 -*-
require 'spec_helper'

describe "diary/new.html.erb" do
  before(:each) do
    assign(:diary, stub_model(Diary,
        :date => Date.new(2012, 6,16),
        :diary_items => [
          DiaryItem.new( :no => 1, :title => "健康"),
          DiaryItem.new( :no => 2, :title => "家族")
        ]
        ).as_new_record)
  end

  it "renders new diary form" do
    render

    assert_select "h2", "2012-06-16"
  end
end
