# -*- coding: utf-8 -*-
require 'spec_helper'

describe DiaryController do

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end

    context "テンプレートがある場合" do
      before do
        temp1 = DiaryTemplate.create( :seq => 1, :title => "健康")
      end

      it "テンプレートに従って作成されること" do
        get 'new'
        assigns[:diary].date.should == Date.today
        assigns[:diary].diary_items.length.should == 1
      end
    end
  end
end
