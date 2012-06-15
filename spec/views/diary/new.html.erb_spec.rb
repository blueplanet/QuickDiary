require 'spec_helper'

describe "diary/new.html.erb" do
  before(:each) do
    assign(:diary, stub_model(Diary,
        :date => Date.new(2012, 6,16)
        ).as_new_record)
  end

  it "renders new diary form" do
    render

    assert_select "h2", "2012-06-16"
    # assert_select "form", :action => diary_path, :method => "post" do
    #   assert_select "show#date", :name => "diary[date]"
    #   assert_select "input#item_title", :name => "item[title]"
    #   assert_select "input#item_content", :name => "item[content]"
    # end
  end
end
